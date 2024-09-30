;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::PersonDetections)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'PersonDetections (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::PERSONDETECTIONS")
  (make-package "PAL_DETECTION_MSGS::PERSONDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude PersonDetections.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_detection_msgs::PersonDetections
  :super ros::object
  :slots (_header _persons _camera_pose ))

(defmethod pal_detection_msgs::PersonDetections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:persons __persons) ())
    ((:camera_pose __camera_pose) (instance geometry_msgs::TransformStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _persons __persons)
   (setq _camera_pose __camera_pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:persons
   (&rest __persons)
   (if (keywordp (car __persons))
       (send* _persons __persons)
     (progn
       (if __persons (setq _persons (car __persons)))
       _persons)))
  (:camera_pose
   (&rest __camera_pose)
   (if (keywordp (car __camera_pose))
       (send* _camera_pose __camera_pose)
     (progn
       (if __camera_pose (setq _camera_pose (car __camera_pose)))
       _camera_pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pal_detection_msgs/PersonDetection[] _persons
    (apply #'+ (send-all _persons :serialization-length)) 4
    ;; geometry_msgs/TransformStamped _camera_pose
    (send _camera_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pal_detection_msgs/PersonDetection[] _persons
     (write-long (length _persons) s)
     (dolist (elem _persons)
       (send elem :serialize s)
       )
     ;; geometry_msgs/TransformStamped _camera_pose
       (send _camera_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pal_detection_msgs/PersonDetection[] _persons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _persons (let (r) (dotimes (i n) (push (instance pal_detection_msgs::PersonDetection :init) r)) r))
     (dolist (elem- _persons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/TransformStamped _camera_pose
     (send _camera_pose :deserialize buf ptr-) (incf ptr- (send _camera_pose :serialization-length))
   ;;
   self)
  )

(setf (get pal_detection_msgs::PersonDetections :md5sum-) "10408415efc5efe2cf6f849017dfdff3")
(setf (get pal_detection_msgs::PersonDetections :datatype-) "pal_detection_msgs/PersonDetections")
(setf (get pal_detection_msgs::PersonDetections :definition-)
      "Header header

pal_detection_msgs/PersonDetection[] persons

# Optional transformation between the camera frame and a certain parent frame
geometry_msgs/TransformStamped camera_pose


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
MSG: pal_detection_msgs/PersonDetection
## Contains detection correspondences among the different person detectors available

# full body image detection. If width == height == 0 then no full body detection is available
pal_detection_msgs/Detection2d full_body

# face image detection. If width == height == 0 then the face has not been detected
pal_detection_msgs/FaceDetection face

# leg detection in laser scan. If Point is (0,0,0) then no legs have been detected
pal_detection_msgs/LegDetections legs

# 3D position of the person with respect to a given frame specified in the header of the PointStamped.
# If the position is not available then (0,0,0) is set.
geometry_msgs/PointStamped position3D 


================================================================================
MSG: pal_detection_msgs/Detection2d
## Rectangle defined by a point, its width and height
# corresponds to the openCV struct : CvRect

# coordinates of the top left corner of the box
int64 x
int64 y

# width of the box
int64 width

# height of the box
int64 height


================================================================================
MSG: pal_detection_msgs/FaceDetection

##########################################
#
# Face detection data
#
##########################################

#####################
# Face bounding box
#####################
# coordinates of the top left corner of the box
int32 x
int32 y

# width of the box
int32 width

# height of the box
int32 height

############################
# Eyes position (if found)
############################

bool eyesLocated

int32 leftEyeX
int32 leftEyeY
int32 rightEyeX
int32 rightEyeY

#############################
# Centre of eyes 3D estimate
#############################
geometry_msgs/Point32 position


############################
# Person recognition
############################

string name
float32 confidence

############################
# Gender recognition
############################
string gender
float32 genderConfidence

############################
# Facial expression
############################
string EXPRESSION_NEUTRAL=\"neutral\"
string EXPRESSION_SMILE=\"smile\"
string EXPRESSION_RAISED_BROWS=\"raised brows\"
string EXPRESSION_EYES_AWAY=\"eyes away\"
string EXPRESSION_SQUINTING=\"squinting\"
string EXPRESSION_FROWNING=\"frowning\"
string expression
float32 expression_confidence

############################
# Facial emotion
############################
float32 emotion_anger_confidence
float32 emotion_disgust_confidence
float32 emotion_fear_confidence
float32 emotion_happiness_confidence
float32 emotion_neutral_confidence
float32 emotion_sadness_confidence
float32 emotion_surprise_confidence

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: pal_detection_msgs/LegDetections
## Contains data relative to the detection of the legs of persons in a laser scan

Header header

geometry_msgs/Point[]  position3D    # 3D position of the persons' legs in a given frame

# Optional transformation between the laser frame and a certain parent frame
geometry_msgs/TransformStamped laser_pose


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

")



(provide :pal_detection_msgs/PersonDetections "10408415efc5efe2cf6f849017dfdff3")


