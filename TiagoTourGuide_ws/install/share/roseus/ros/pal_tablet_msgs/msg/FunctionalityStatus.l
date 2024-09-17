;; Auto-generated. Do not edit!


(when (boundp 'pal_tablet_msgs::FunctionalityStatus)
  (if (not (find-package "PAL_TABLET_MSGS"))
    (make-package "PAL_TABLET_MSGS"))
  (shadow 'FunctionalityStatus (find-package "PAL_TABLET_MSGS")))
(unless (find-package "PAL_TABLET_MSGS::FUNCTIONALITYSTATUS")
  (make-package "PAL_TABLET_MSGS::FUNCTIONALITYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude FunctionalityStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_tablet_msgs::FunctionalityStatus
  :super ros::object
  :slots (_errMessage _errStatus ))

(defmethod pal_tablet_msgs::FunctionalityStatus
  (:init
   (&key
    ((:errMessage __errMessage) (instance std_msgs::String :init))
    ((:errStatus __errStatus) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _errMessage __errMessage)
   (setq _errStatus __errStatus)
   self)
  (:errMessage
   (&rest __errMessage)
   (if (keywordp (car __errMessage))
       (send* _errMessage __errMessage)
     (progn
       (if __errMessage (setq _errMessage (car __errMessage)))
       _errMessage)))
  (:errStatus
   (&rest __errStatus)
   (if (keywordp (car __errStatus))
       (send* _errStatus __errStatus)
     (progn
       (if __errStatus (setq _errStatus (car __errStatus)))
       _errStatus)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _errMessage
    (send _errMessage :serialization-length)
    ;; std_msgs/Bool _errStatus
    (send _errStatus :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _errMessage
       (send _errMessage :serialize s)
     ;; std_msgs/Bool _errStatus
       (send _errStatus :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _errMessage
     (send _errMessage :deserialize buf ptr-) (incf ptr- (send _errMessage :serialization-length))
   ;; std_msgs/Bool _errStatus
     (send _errStatus :deserialize buf ptr-) (incf ptr- (send _errStatus :serialization-length))
   ;;
   self)
  )

(setf (get pal_tablet_msgs::FunctionalityStatus :md5sum-) "8a8da27b7dcd09b29d33e708966ece31")
(setf (get pal_tablet_msgs::FunctionalityStatus :datatype-) "pal_tablet_msgs/FunctionalityStatus")
(setf (get pal_tablet_msgs::FunctionalityStatus :definition-)
      "# Functionality status message

std_msgs/String   errMessage
std_msgs/Bool     errStatus

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :pal_tablet_msgs/FunctionalityStatus "8a8da27b7dcd09b29d33e708966ece31")


