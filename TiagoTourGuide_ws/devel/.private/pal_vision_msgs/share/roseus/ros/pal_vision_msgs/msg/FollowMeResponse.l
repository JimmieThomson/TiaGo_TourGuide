;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::FollowMeResponse)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'FollowMeResponse (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::FOLLOWMERESPONSE")
  (make-package "PAL_VISION_MSGS::FOLLOWMERESPONSE"))

(in-package "ROS")
;;//! \htmlinclude FollowMeResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_vision_msgs::FollowMeResponse
  :super ros::object
  :slots (_header _targetDetected ))

(defmethod pal_vision_msgs::FollowMeResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:targetDetected __targetDetected) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _targetDetected __targetDetected)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:targetDetected
   (&optional (__targetDetected :null))
   (if (not (eq __targetDetected :null)) (setq _targetDetected __targetDetected)) _targetDetected)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _targetDetected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _targetDetected
       (if _targetDetected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _targetDetected
     (setq _targetDetected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_vision_msgs::FollowMeResponse :md5sum-) "36315720880eb3a5b4a4ddf6ffd48eec")
(setf (get pal_vision_msgs::FollowMeResponse :datatype-) "pal_vision_msgs/FollowMeResponse")
(setf (get pal_vision_msgs::FollowMeResponse :definition-)
      "## Contains the response of followMeServer when it is searching for the target person

Header header

bool targetDetected


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

")



(provide :pal_vision_msgs/FollowMeResponse "36315720880eb3a5b4a4ddf6ffd48eec")


