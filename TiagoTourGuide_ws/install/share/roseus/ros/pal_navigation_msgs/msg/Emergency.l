;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::Emergency)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'Emergency (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::EMERGENCY")
  (make-package "PAL_NAVIGATION_MSGS::EMERGENCY"))

(in-package "ROS")
;;//! \htmlinclude Emergency.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::Emergency
  :super ros::object
  :slots (_data _forward _backward _msgs ))

(defmethod pal_navigation_msgs::Emergency
  (:init
   (&key
    ((:data __data) nil)
    ((:forward __forward) nil)
    ((:backward __backward) nil)
    ((:msgs __msgs) ())
    )
   (send-super :init)
   (setq _data __data)
   (setq _forward __forward)
   (setq _backward __backward)
   (setq _msgs __msgs)
   self)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:forward
   (&optional (__forward :null))
   (if (not (eq __forward :null)) (setq _forward __forward)) _forward)
  (:backward
   (&optional (__backward :null))
   (if (not (eq __backward :null)) (setq _backward __backward)) _backward)
  (:msgs
   (&rest __msgs)
   (if (keywordp (car __msgs))
       (send* _msgs __msgs)
     (progn
       (if __msgs (setq _msgs (car __msgs)))
       _msgs)))
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ;; bool _forward
    1
    ;; bool _backward
    1
    ;; std_msgs/String[] _msgs
    (apply #'+ (send-all _msgs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;; bool _forward
       (if _forward (write-byte -1 s) (write-byte 0 s))
     ;; bool _backward
       (if _backward (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/String[] _msgs
     (write-long (length _msgs) s)
     (dolist (elem _msgs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _forward
     (setq _forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _backward
     (setq _backward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/String[] _msgs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _msgs (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _msgs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::Emergency :md5sum-) "a23e1ed551a213a5d03f1cf6db037717")
(setf (get pal_navigation_msgs::Emergency :datatype-) "pal_navigation_msgs/Emergency")
(setf (get pal_navigation_msgs::Emergency :definition-)
      "# Emergency stop msg
bool data
bool forward
bool backward
std_msgs/String[] msgs


================================================================================
MSG: std_msgs/String
string data

")



(provide :pal_navigation_msgs/Emergency "a23e1ed551a213a5d03f1cf6db037717")


