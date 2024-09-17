;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::NavigationStatus)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'NavigationStatus (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::NAVIGATIONSTATUS")
  (make-package "PAL_NAVIGATION_MSGS::NAVIGATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavigationStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::NavigationStatus
  :super ros::object
  :slots (_status _msg ))

(defmethod pal_navigation_msgs::NavigationStatus
  (:init
   (&key
    ((:status __status) (instance std_msgs::String :init))
    ((:msg __msg) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _status __status)
   (setq _msg __msg)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:msg
   (&rest __msg)
   (if (keywordp (car __msg))
       (send* _msg __msg)
     (progn
       (if __msg (setq _msg (car __msg)))
       _msg)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _status
    (send _status :serialization-length)
    ;; std_msgs/String _msg
    (send _msg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _status
       (send _status :serialize s)
     ;; std_msgs/String _msg
       (send _msg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; std_msgs/String _msg
     (send _msg :deserialize buf ptr-) (incf ptr- (send _msg :serialization-length))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::NavigationStatus :md5sum-) "37841f68121395f14fd0a4c8470eb55c")
(setf (get pal_navigation_msgs::NavigationStatus :datatype-) "pal_navigation_msgs/NavigationStatus")
(setf (get pal_navigation_msgs::NavigationStatus :definition-)
      "std_msgs/String  status
std_msgs/String  msg

================================================================================
MSG: std_msgs/String
string data

")



(provide :pal_navigation_msgs/NavigationStatus "37841f68121395f14fd0a4c8470eb55c")


