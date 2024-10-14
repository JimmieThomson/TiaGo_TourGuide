;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::WaveDetection)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'WaveDetection (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::WAVEDETECTION")
  (make-package "PAL_DETECTION_MSGS::WAVEDETECTION"))

(in-package "ROS")
;;//! \htmlinclude WaveDetection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_detection_msgs::WaveDetection
  :super ros::object
  :slots (_header _wave _u _v ))

(defmethod pal_detection_msgs::WaveDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:wave __wave) nil)
    ((:u __u) 0)
    ((:v __v) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _wave __wave)
   (setq _u (round __u))
   (setq _v (round __v))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:wave
   (&optional (__wave :null))
   (if (not (eq __wave :null)) (setq _wave __wave)) _wave)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _wave
    1
    ;; int8 _u
    1
    ;; int8 _v
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _wave
       (if _wave (write-byte -1 s) (write-byte 0 s))
     ;; int8 _u
       (write-byte _u s)
     ;; int8 _v
       (write-byte _v s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _wave
     (setq _wave (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _u
     (setq _u (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _u 127) (setq _u (- _u 256)))
   ;; int8 _v
     (setq _v (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _v 127) (setq _v (- _v 256)))
   ;;
   self)
  )

(setf (get pal_detection_msgs::WaveDetection :md5sum-) "aa420a347ae2972ab2629dc50442fbb8")
(setf (get pal_detection_msgs::WaveDetection :datatype-) "pal_detection_msgs/WaveDetection")
(setf (get pal_detection_msgs::WaveDetection :definition-)
      "Header header

bool wave    #whether a person waving has been detected
int8 u       #(u, v) are the pixel coordinates where
int8 v       #the person waving has been detected


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



(provide :pal_detection_msgs/WaveDetection "aa420a347ae2972ab2629dc50442fbb8")


