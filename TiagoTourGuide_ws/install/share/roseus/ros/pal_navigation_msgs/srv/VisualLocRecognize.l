;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::VisualLocRecognize)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'VisualLocRecognize (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::VISUALLOCRECOGNIZE")
  (make-package "PAL_NAVIGATION_MSGS::VISUALLOCRECOGNIZE"))
(unless (find-package "PAL_NAVIGATION_MSGS::VISUALLOCRECOGNIZEREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::VISUALLOCRECOGNIZEREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::VISUALLOCRECOGNIZERESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::VISUALLOCRECOGNIZERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pal_navigation_msgs::VisualLocRecognizeRequest
  :super ros::object
  :slots ())

(defmethod pal_navigation_msgs::VisualLocRecognizeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pal_navigation_msgs::VisualLocRecognizeResponse
  :super ros::object
  :slots (_success _confidence _estimatedPose ))

(defmethod pal_navigation_msgs::VisualLocRecognizeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:confidence __confidence) 0.0)
    ((:estimatedPose __estimatedPose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _confidence (float __confidence))
   (setq _estimatedPose __estimatedPose)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:estimatedPose
   (&rest __estimatedPose)
   (if (keywordp (car __estimatedPose))
       (send* _estimatedPose __estimatedPose)
     (progn
       (if __estimatedPose (setq _estimatedPose (car __estimatedPose)))
       _estimatedPose)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float64 _confidence
    8
    ;; geometry_msgs/PoseWithCovarianceStamped _estimatedPose
    (send _estimatedPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/PoseWithCovarianceStamped _estimatedPose
       (send _estimatedPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/PoseWithCovarianceStamped _estimatedPose
     (send _estimatedPose :deserialize buf ptr-) (incf ptr- (send _estimatedPose :serialization-length))
   ;;
   self)
  )

(defclass pal_navigation_msgs::VisualLocRecognize
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::VisualLocRecognize :md5sum-) "af944bb003989194ffe33120c472f3ed")
(setf (get pal_navigation_msgs::VisualLocRecognize :datatype-) "pal_navigation_msgs/VisualLocRecognize")
(setf (get pal_navigation_msgs::VisualLocRecognize :request) pal_navigation_msgs::VisualLocRecognizeRequest)
(setf (get pal_navigation_msgs::VisualLocRecognize :response) pal_navigation_msgs::VisualLocRecognizeResponse)

(defmethod pal_navigation_msgs::VisualLocRecognizeRequest
  (:response () (instance pal_navigation_msgs::VisualLocRecognizeResponse :init)))

(setf (get pal_navigation_msgs::VisualLocRecognizeRequest :md5sum-) "af944bb003989194ffe33120c472f3ed")
(setf (get pal_navigation_msgs::VisualLocRecognizeRequest :datatype-) "pal_navigation_msgs/VisualLocRecognizeRequest")
(setf (get pal_navigation_msgs::VisualLocRecognizeRequest :definition-)
      "# not argument needed to call place recognition 
---
bool success                                               # return true if get successful recognition
float64 confidence                                          # recognition confidence
geometry_msgs/PoseWithCovarianceStamped estimatedPose      # estimated pose (use this only when success == true)





================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
")

(setf (get pal_navigation_msgs::VisualLocRecognizeResponse :md5sum-) "af944bb003989194ffe33120c472f3ed")
(setf (get pal_navigation_msgs::VisualLocRecognizeResponse :datatype-) "pal_navigation_msgs/VisualLocRecognizeResponse")
(setf (get pal_navigation_msgs::VisualLocRecognizeResponse :definition-)
      "# not argument needed to call place recognition 
---
bool success                                               # return true if get successful recognition
float64 confidence                                          # recognition confidence
geometry_msgs/PoseWithCovarianceStamped estimatedPose      # estimated pose (use this only when success == true)





================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
")



(provide :pal_navigation_msgs/VisualLocRecognize "af944bb003989194ffe33120c472f3ed")


