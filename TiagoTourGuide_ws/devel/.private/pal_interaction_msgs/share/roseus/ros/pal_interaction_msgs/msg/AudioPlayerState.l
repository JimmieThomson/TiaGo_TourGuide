;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::AudioPlayerState)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'AudioPlayerState (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::AUDIOPLAYERSTATE")
  (make-package "PAL_INTERACTION_MSGS::AUDIOPLAYERSTATE"))

(in-package "ROS")
;;//! \htmlinclude AudioPlayerState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_interaction_msgs::AudioPlayerState
  :super ros::object
  :slots (_header _isPlaying _msg ))

(defmethod pal_interaction_msgs::AudioPlayerState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:isPlaying __isPlaying) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _isPlaying __isPlaying)
   (setq _msg (string __msg))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:isPlaying
   (&optional (__isPlaying :null))
   (if (not (eq __isPlaying :null)) (setq _isPlaying __isPlaying)) _isPlaying)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _isPlaying
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _isPlaying
       (if _isPlaying (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _isPlaying
     (setq _isPlaying (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::AudioPlayerState :md5sum-) "56d08544761f7625c1fa9ada542abb32")
(setf (get pal_interaction_msgs::AudioPlayerState :datatype-) "pal_interaction_msgs/AudioPlayerState")
(setf (get pal_interaction_msgs::AudioPlayerState :definition-)
      "# Message used to publish when the internal player is playing something on the speakers
# isPlayer is true when playing.
Header header
bool isPlaying
string msg
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



(provide :pal_interaction_msgs/AudioPlayerState "56d08544761f7625c1fa9ada542abb32")


