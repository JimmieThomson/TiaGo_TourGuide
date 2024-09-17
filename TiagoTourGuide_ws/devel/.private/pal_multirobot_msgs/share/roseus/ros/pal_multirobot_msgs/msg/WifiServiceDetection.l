;; Auto-generated. Do not edit!


(when (boundp 'pal_multirobot_msgs::WifiServiceDetection)
  (if (not (find-package "PAL_MULTIROBOT_MSGS"))
    (make-package "PAL_MULTIROBOT_MSGS"))
  (shadow 'WifiServiceDetection (find-package "PAL_MULTIROBOT_MSGS")))
(unless (find-package "PAL_MULTIROBOT_MSGS::WIFISERVICEDETECTION")
  (make-package "PAL_MULTIROBOT_MSGS::WIFISERVICEDETECTION"))

(in-package "ROS")
;;//! \htmlinclude WifiServiceDetection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_multirobot_msgs::WifiServiceDetection
  :super ros::object
  :slots (_header _id _signal ))

(defmethod pal_multirobot_msgs::WifiServiceDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) "")
    ((:signal __signal) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (string __id))
   (setq _signal (round __signal))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _id
    4 (length _id)
    ;; int16 _signal
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int16 _signal
       (write-word _signal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _signal
     (setq _signal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get pal_multirobot_msgs::WifiServiceDetection :md5sum-) "a2e54cd74d6654020f51ebb6558225d3")
(setf (get pal_multirobot_msgs::WifiServiceDetection :datatype-) "pal_multirobot_msgs/WifiServiceDetection")
(setf (get pal_multirobot_msgs::WifiServiceDetection :definition-)
      "## Contains data relative to the signal level of the service wireless detected from other robots

Header header

# Signal Level of the Id robot detected
string id
int16  signal

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



(provide :pal_multirobot_msgs/WifiServiceDetection "a2e54cd74d6654020f51ebb6558225d3")


