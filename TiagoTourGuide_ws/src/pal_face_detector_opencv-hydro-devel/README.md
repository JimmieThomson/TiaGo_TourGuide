

pal_face_detector_opencv
========================

ROS package wrapping OpenCV's face detection cascade. It provides a ROS node that subscribes to an image topic and publishes the following topics:

   ```
   /pal_face/faces
   /pal_face/debug
   ```

The `/pal_face/faces` topic contains a `pal_detection_msgs/FaceDetections` message with the regions of interest classified as faces.
The `/pal_face/debug` is an image topic with the faces detected painted on it.


### How to test

In one terminal play the rosbag provided in the package:

   ```
   rosbag play `rospack find pal_face_detector_opencv`/etc/two_faces.bag --loop
   ```

In another terminal launch the detector:

   ```
   roslaunch pal_face_detector_opencv detector.launch
   ```

In a third terminal, run the following command to see the face detections in the video stream:

   ```
   rosrun image_view image_view image:=/pal_face/debug
   ```

An example of the `/pal_face/debug` topic image is shown below


<img align="left" src="https://github.com/jordi-pages/pal_face_detector_opencv/blob/master/etc/pal_face_debug.jpg?raw=true" />

