;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::PersonDetection)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'PersonDetection (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::PERSONDETECTION")
  (make-package "PAL_DETECTION_MSGS::PERSONDETECTION"))

(in-package "ROS")
;;//! \htmlinclude PersonDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pal_detection_msgs::PersonDetection
  :super ros::object
  :slots (_full_body _face _legs _position3D ))

(defmethod pal_detection_msgs::PersonDetection
  (:init
   (&key
    ((:full_body __full_body) (instance pal_detection_msgs::Detection2d :init))
    ((:face __face) (instance pal_detection_msgs::FaceDetection :init))
    ((:legs __legs) (instance pal_detection_msgs::LegDetections :init))
    ((:position3D __position3D) (instance geometry_msgs::PointStamped :init))
    )
   (send-super :init)
   (setq _full_body __full_body)
   (setq _face __face)
   (setq _legs __legs)
   (setq _position3D __position3D)
   self)
  (:full_body
   (&rest __full_body)
   (if (keywordp (car __full_body))
       (send* _full_body __full_body)
     (progn
       (if __full_body (setq _full_body (car __full_body)))
       _full_body)))
  (:face
   (&rest __face)
   (if (keywordp (car __face))
       (send* _face __face)
     (progn
       (if __face (setq _face (car __face)))
       _face)))
  (:legs
   (&rest __legs)
   (if (keywordp (car __legs))
       (send* _legs __legs)
     (progn
       (if __legs (setq _legs (car __legs)))
       _legs)))
  (:position3D
   (&rest __position3D)
   (if (keywordp (car __position3D))
       (send* _position3D __position3D)
     (progn
       (if __position3D (setq _position3D (car __position3D)))
       _position3D)))
  (:serialization-length
   ()
   (+
    ;; pal_detection_msgs/Detection2d _full_body
    (send _full_body :serialization-length)
    ;; pal_detection_msgs/FaceDetection _face
    (send _face :serialization-length)
    ;; pal_detection_msgs/LegDetections _legs
    (send _legs :serialization-length)
    ;; geometry_msgs/PointStamped _position3D
    (send _position3D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_detection_msgs/Detection2d _full_body
       (send _full_body :serialize s)
     ;; pal_detection_msgs/FaceDetection _face
       (send _face :serialize s)
     ;; pal_detection_msgs/LegDetections _legs
       (send _legs :serialize s)
     ;; geometry_msgs/PointStamped _position3D
       (send _position3D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_detection_msgs/Detection2d _full_body
     (send _full_body :deserialize buf ptr-) (incf ptr- (send _full_body :serialization-length))
   ;; pal_detection_msgs/FaceDetection _face
     (send _face :deserialize buf ptr-) (incf ptr- (send _face :serialization-length))
   ;; pal_detection_msgs/LegDetections _legs
     (send _legs :deserialize buf ptr-) (incf ptr- (send _legs :serialization-length))
   ;; geometry_msgs/PointStamped _position3D
     (send _position3D :deserialize buf ptr-) (incf ptr- (send _position3D :serialization-length))
   ;;
   self)
  )

(setf (get pal_detection_msgs::PersonDetection :md5sum-) "e36e1ffebbbf48f74bd26f2521fb377f")
(setf (get pal_detection_msgs::PersonDetection :datatype-) "pal_detection_msgs/PersonDetection")
(setf (get pal_detection_msgs::PersonDetection :definition-)
      "## Contains detection correspondences among the different person detectors available

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



(provide :pal_detection_msgs/PersonDetection "e36e1ffebbbf48f74bd26f2521fb377f")


