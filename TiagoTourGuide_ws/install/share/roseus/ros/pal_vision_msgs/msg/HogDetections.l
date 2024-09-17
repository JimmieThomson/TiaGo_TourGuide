;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::HogDetections)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'HogDetections (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::HOGDETECTIONS")
  (make-package "PAL_VISION_MSGS::HOGDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude HogDetections.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_vision_msgs::HogDetections
  :super ros::object
  :slots (_header _imgID _persons ))

(defmethod pal_vision_msgs::HogDetections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:imgID __imgID) 0)
    ((:persons __persons) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _imgID (round __imgID))
   (setq _persons __persons)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:imgID
   (&optional __imgID)
   (if __imgID (setq _imgID __imgID)) _imgID)
  (:persons
   (&rest __persons)
   (if (keywordp (car __persons))
       (send* _persons __persons)
     (progn
       (if __persons (setq _persons (car __persons)))
       _persons)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _imgID
    4
    ;; pal_vision_msgs/HogDetection[] _persons
    (apply #'+ (send-all _persons :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _imgID
       (write-long _imgID s)
     ;; pal_vision_msgs/HogDetection[] _persons
     (write-long (length _persons) s)
     (dolist (elem _persons)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _imgID
     (setq _imgID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pal_vision_msgs/HogDetection[] _persons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _persons (let (r) (dotimes (i n) (push (instance pal_vision_msgs::HogDetection :init) r)) r))
     (dolist (elem- _persons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_vision_msgs::HogDetections :md5sum-) "6a2b9c8c4c785ae7eec19468d16ba3c8")
(setf (get pal_vision_msgs::HogDetections :datatype-) "pal_vision_msgs/HogDetections")
(setf (get pal_vision_msgs::HogDetections :definition-)
      "## Contains data relative to the detection of person in an image using the HOG descriptor

Header header

uint32                           imgID    #image sequence ID in which the faces have been detected. Images are published in /person/image
pal_vision_msgs/HogDetection[]   persons  #vector of HOG detections



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: pal_vision_msgs/HogDetection
## Contains data relative to the detection of a person using the HOG descriptor

pal_vision_msgs/Rectangle  imageBoundingBox         # bounding box of image region in which the person has been detected
geometry_msgs/Vector3      direction                # unitary vector expressing in what direction wrt the robot base frame the person is
float32[]                  hog                      # HOG descriptor of the person region
std_msgs/ColorRGBA         principalEigenVectorRGB  # Eigen vector (remember this is an unitary vector) corresponding to the maximum eigen value of all the RGB values in the person region. 
std_msgs/ColorRGBA[]       rgbClusterCenters        # RGB cluster centers of the person region in the image obtained using k-means. The rgb components are expressed in [0..1]
uint32[]                   rgbDescriptor1           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 1)
uint32[]                   rgbDescriptor2           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 2)




================================================================================
MSG: pal_vision_msgs/Rectangle
## Rectangle defined by a point, its width and height
# corresponds to the openCV struct : CvRect

# coordinates of the top left corner of the box
int64 x
int64 y

# wigth of the box
int64 width

# height of the box
int64 height

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :pal_vision_msgs/HogDetections "6a2b9c8c4c785ae7eec19468d16ba3c8")


