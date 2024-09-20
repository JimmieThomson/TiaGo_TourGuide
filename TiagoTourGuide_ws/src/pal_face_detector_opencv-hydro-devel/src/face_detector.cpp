/*
 * Software License Agreement (Modified BSD License)
 *
 *  Copyright (c) 2013-14, PAL Robotics, S.L.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of PAL Robotics, S.L. nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 */

/** \author Jordi Pages. */

// PAL headers
#include <pal_detection_msgs/FaceDetections.h>

// ROS headers
#include <ros/ros.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/Image.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/image_encodings.h>
#include <ros/package.h>

// OpenCV headers
#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

// Boost headers
#include <boost/foreach.hpp>

// Std C++ headers
#include <vector>
#include <stdexcept>

/**
 * @brief The FaceDetector class encapsulating an image subscriber and the OpenCV's cascade classifier
 *        for face detection
 *
 * @example rosrun face_detector_opencv face_detector image:=/stereo/right/image
 *
 */
class FaceDetector
{
public:

  FaceDetector(ros::NodeHandle& nh,
               bool verbosePublishing);

  virtual ~FaceDetector();

protected:

  ros::NodeHandle _nh;
  bool _verbosePublishing;
  ros::Time _imgTimeStamp;
  std::string _cameraFrameId;

  void imageCallback(const sensor_msgs::ImageConstPtr& msg);

  void detectFaces(const cv::Mat& img,
                     std::vector<cv::Rect>& detections);

  void publishDetections(const std::vector<cv::Rect>& faces);

  void publishDebugImage(const cv::Mat& img,
                         const std::vector<cv::Rect>& faces);

  cv::CascadeClassifier _faceClassifier;

  image_transport::ImageTransport _imageTransport;
  image_transport::Subscriber _imageSub;

  ros::Publisher _pub;
  image_transport::Publisher _imDebugPub;
  cv_bridge::CvImage _cvImg;

  cv::Size _imgProcessingSize, _originalImageSize;
  double _minRelEyeDist, _maxRelEyeDist;
  cv::Size _minFaceSize, _maxFaceSize;

};

FaceDetector::FaceDetector(ros::NodeHandle& nh,
                           bool verbosePublishing):
  _nh(nh),
  _verbosePublishing(verbosePublishing),
  _imageTransport(nh),
  _imgProcessingSize(-1,-1),
  _minRelEyeDist(0.0375),
  _maxRelEyeDist(0.1)
{
  std::string pathToClassifier = ros::package::getPath("pal_face_detector_opencv") +
                                 "/config/haarcascade_frontalface_alt.xml";
  if ( !_faceClassifier.load(pathToClassifier.c_str()) )
    throw std::runtime_error("Error loading classifier");

  image_transport::TransportHints transportHint("raw");

  _imageSub = _imageTransport.subscribe("image", 1, &FaceDetector::imageCallback, this, transportHint);

  ROS_INFO_STREAM("Subscribing to image topic: " << _imageSub.getTopic());

  _pub = _nh.advertise<pal_detection_msgs::FaceDetections>("faces", 1);
  _imDebugPub = _imageTransport.advertise("debug", 1);

  _nh.param<int>("processing_img_width", _imgProcessingSize.width, _imgProcessingSize.height);
  _nh.param<int>("processing_img_height", _imgProcessingSize.height, _imgProcessingSize.height);
  _nh.param<double>("rel_min_eye_dist", _minRelEyeDist, _minRelEyeDist);
  _nh.param<double>("rel_max_eye_dist", _maxRelEyeDist, _maxRelEyeDist);
}

FaceDetector::~FaceDetector()
{
  cv::destroyWindow("face detections");
}

void FaceDetector::publishDetections(const std::vector<cv::Rect>& faces)
{
  pal_detection_msgs::FaceDetections msg;
  pal_detection_msgs::FaceDetection  detection;

  msg.header.stamp = _imgTimeStamp;
  msg.header.frame_id = _cameraFrameId;

  BOOST_FOREACH(const cv::Rect& face, faces)
  {
    //publish the detection according to the original image size
    detection.x           = static_cast<int>(face.x      * _originalImageSize.width/_imgProcessingSize.width);
    detection.y           = static_cast<int>(face.y      * _originalImageSize.height/_imgProcessingSize.height);
    detection.width       = static_cast<int>(face.width  * _originalImageSize.width/_imgProcessingSize.width);
    detection.height      = static_cast<int>(face.height * _originalImageSize.height/_imgProcessingSize.height);
    detection.eyesLocated = false;
    detection.leftEyeX    = 0;
    detection.leftEyeY    = 0;
    detection.rightEyeX   = 0;
    detection.rightEyeY   = 0;

    detection.name        = "";
    detection.confidence  = 0;
    msg.faces.push_back(detection);
  }

  _pub.publish(msg);
}

void FaceDetector::publishDebugImage(const cv::Mat& img,
                                     const std::vector<cv::Rect>& faces)
{
  cv::Mat imgDebug = img.clone();
  BOOST_FOREACH(const cv::Rect& face, faces)
  {
    cv::rectangle(imgDebug, face, CV_RGB(0,255,0), 1);
  }

  if ( imgDebug.channels() == 3 && imgDebug.depth() == CV_8U )
    _cvImg.encoding = sensor_msgs::image_encodings::RGB8;

  else if ( imgDebug.channels() == 1 && imgDebug.depth() == CV_8U )
    _cvImg.encoding = sensor_msgs::image_encodings::MONO8;
  else
    throw std::runtime_error("Error in FaceDetector::publishDebugImage: only 24-bit BGR or 8-bit MONO images are currently supported");

  _cvImg.image = imgDebug;
  sensor_msgs::Image imgMsg;
  _cvImg.toImageMsg(imgMsg); //copy image data to ROS message

  _imDebugPub.publish(imgMsg);
}

void FaceDetector::imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
  if ( _pub.getNumSubscribers() > 0 || _imDebugPub.getNumSubscribers() > 0 )
  {
    _imgTimeStamp = msg->header.stamp;
    _cameraFrameId = msg->header.frame_id;

    cv::Mat img;

    cv_bridge::CvImageConstPtr cvImgPtr;
    cvImgPtr = cv_bridge::toCvShare(msg);
    cvImgPtr->image.copyTo(img);

    _originalImageSize = img.size();

    cv::Mat imgScaled;

    if ( _imgProcessingSize.width != -1 )
    {
      _minFaceSize.width = static_cast<int>(_minRelEyeDist * _imgProcessingSize.width / 0.4);
      _maxFaceSize.width = static_cast<int>(_maxRelEyeDist * _imgProcessingSize.width / 0.4);
      cv::resize(img, imgScaled, _imgProcessingSize);
    }
    else
    {
      _minFaceSize.width = static_cast<int>(_minRelEyeDist * _originalImageSize.width / 0.4);
      _maxFaceSize.width = static_cast<int>(_maxRelEyeDist * _originalImageSize.width / 0.4);
      imgScaled = img;
    }

    _minFaceSize.height = _minFaceSize.width;
    _maxFaceSize.height = _maxFaceSize.width;

    std::vector<cv::Rect> detections;

    detectFaces(imgScaled, detections);

    if ( _pub.getNumSubscribers() > 0 &&
         (!detections.empty() || _verbosePublishing) )
    {
      publishDetections(detections);
    }

    if ( _imDebugPub.getNumSubscribers() > 0 )
      publishDebugImage(imgScaled, detections);

    //showDetections(img, detections);
  }
}

void FaceDetector::detectFaces(const cv::Mat& img,
                               std::vector<cv::Rect>& detections)
{
  cv::Mat imgGray;

  cv::cvtColor(img, imgGray, CV_BGR2GRAY);

  //int64 start = cvGetTickCount();

  _faceClassifier.detectMultiScale(imgGray,
                                   detections,
                                   1.1,           //scale factor
                                   2,             //min neighbors
                                   0, //CV_HAAR_DO_CANNY_PRUNING,
                                   _minFaceSize,
                                   _maxFaceSize);

  //int64 stop = cvGetTickCount();

  //ROS_INFO_STREAM("Elapsed time: " << (stop - start)/(cvGetTickFrequency()*1000.0) << " ms");
}

int main(int argc, char **argv)
{
  ros::init(argc,argv,"face_detector_opencv"); // Create and name the Node
  ros::NodeHandle nh("~");

  bool verbosePublishing = true;
  if ( argc > 1 )
  {
    std::string arg = argv[1];
    if ( arg == "true" || arg == "True" )
      verbosePublishing = true;
    else if ( arg == "false" || arg == "False" )
      verbosePublishing = false;
    else
      throw std::runtime_error("Wrong argument. Boolean expected");
  }

  double frequency = 5;
  if ( argc > 2 )
  {
    frequency = atof(argv[2]);
  }

  ROS_INFO("Creating face detector");

  FaceDetector detector(nh,
                        verbosePublishing);

  ROS_INFO("Spinning to serve callbacks ...");

  ros::Rate rate(frequency);
  while ( ros::ok() )
  {
    ros::spinOnce();
    rate.sleep();
  }

  return 0;
}

