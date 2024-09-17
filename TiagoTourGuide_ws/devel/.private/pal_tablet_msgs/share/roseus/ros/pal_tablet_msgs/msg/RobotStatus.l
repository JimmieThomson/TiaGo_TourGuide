;; Auto-generated. Do not edit!


(when (boundp 'pal_tablet_msgs::RobotStatus)
  (if (not (find-package "PAL_TABLET_MSGS"))
    (make-package "PAL_TABLET_MSGS"))
  (shadow 'RobotStatus (find-package "PAL_TABLET_MSGS")))
(unless (find-package "PAL_TABLET_MSGS::ROBOTSTATUS")
  (make-package "PAL_TABLET_MSGS::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(defclass pal_tablet_msgs::RobotStatus
  :super ros::object
  :slots (_messages ))

(defmethod pal_tablet_msgs::RobotStatus
  (:init
   (&key
    ((:messages __messages) ())
    )
   (send-super :init)
   (setq _messages __messages)
   self)
  (:messages
   (&rest __messages)
   (if (keywordp (car __messages))
       (send* _messages __messages)
     (progn
       (if __messages (setq _messages (car __messages)))
       _messages)))
  (:serialization-length
   ()
   (+
    ;; pal_tablet_msgs/FunctionalityStatus[] _messages
    (apply #'+ (send-all _messages :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_tablet_msgs/FunctionalityStatus[] _messages
     (write-long (length _messages) s)
     (dolist (elem _messages)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_tablet_msgs/FunctionalityStatus[] _messages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _messages (let (r) (dotimes (i n) (push (instance pal_tablet_msgs::FunctionalityStatus :init) r)) r))
     (dolist (elem- _messages)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_tablet_msgs::RobotStatus :md5sum-) "3495bf9d81b79deaa82f3652871818c5")
(setf (get pal_tablet_msgs::RobotStatus :datatype-) "pal_tablet_msgs/RobotStatus")
(setf (get pal_tablet_msgs::RobotStatus :definition-)
      "# Robot status msgs for tablet

pal_tablet_msgs/FunctionalityStatus[] messages 

================================================================================
MSG: pal_tablet_msgs/FunctionalityStatus
# Functionality status message

std_msgs/String   errMessage
std_msgs/Bool     errStatus

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :pal_tablet_msgs/RobotStatus "3495bf9d81b79deaa82f3652871818c5")


