;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::ShutdownAndWakeUpRobot)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'ShutdownAndWakeUpRobot (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::SHUTDOWNANDWAKEUPROBOT")
  (make-package "PAL_DEVICE_MSGS::SHUTDOWNANDWAKEUPROBOT"))
(unless (find-package "PAL_DEVICE_MSGS::SHUTDOWNANDWAKEUPROBOTREQUEST")
  (make-package "PAL_DEVICE_MSGS::SHUTDOWNANDWAKEUPROBOTREQUEST"))
(unless (find-package "PAL_DEVICE_MSGS::SHUTDOWNANDWAKEUPROBOTRESPONSE")
  (make-package "PAL_DEVICE_MSGS::SHUTDOWNANDWAKEUPROBOTRESPONSE"))

(in-package "ROS")





(defclass pal_device_msgs::ShutdownAndWakeUpRobotRequest
  :super ros::object
  :slots (_shutdown_duration ))

(defmethod pal_device_msgs::ShutdownAndWakeUpRobotRequest
  (:init
   (&key
    ((:shutdown_duration __shutdown_duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _shutdown_duration __shutdown_duration)
   self)
  (:shutdown_duration
   (&optional __shutdown_duration)
   (if __shutdown_duration (setq _shutdown_duration __shutdown_duration)) _shutdown_duration)
  (:serialization-length
   ()
   (+
    ;; duration _shutdown_duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _shutdown_duration
       (write-long (send _shutdown_duration :sec) s) (write-long (send _shutdown_duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _shutdown_duration
     (send _shutdown_duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _shutdown_duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pal_device_msgs::ShutdownAndWakeUpRobotResponse
  :super ros::object
  :slots ())

(defmethod pal_device_msgs::ShutdownAndWakeUpRobotResponse
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

(defclass pal_device_msgs::ShutdownAndWakeUpRobot
  :super ros::object
  :slots ())

(setf (get pal_device_msgs::ShutdownAndWakeUpRobot :md5sum-) "1f8f568ec4dc499fbd0dce4b139875f5")
(setf (get pal_device_msgs::ShutdownAndWakeUpRobot :datatype-) "pal_device_msgs/ShutdownAndWakeUpRobot")
(setf (get pal_device_msgs::ShutdownAndWakeUpRobot :request) pal_device_msgs::ShutdownAndWakeUpRobotRequest)
(setf (get pal_device_msgs::ShutdownAndWakeUpRobot :response) pal_device_msgs::ShutdownAndWakeUpRobotResponse)

(defmethod pal_device_msgs::ShutdownAndWakeUpRobotRequest
  (:response () (instance pal_device_msgs::ShutdownAndWakeUpRobotResponse :init)))

(setf (get pal_device_msgs::ShutdownAndWakeUpRobotRequest :md5sum-) "1f8f568ec4dc499fbd0dce4b139875f5")
(setf (get pal_device_msgs::ShutdownAndWakeUpRobotRequest :datatype-) "pal_device_msgs/ShutdownAndWakeUpRobotRequest")
(setf (get pal_device_msgs::ShutdownAndWakeUpRobotRequest :definition-)
      "duration shutdown_duration

---
")

(setf (get pal_device_msgs::ShutdownAndWakeUpRobotResponse :md5sum-) "1f8f568ec4dc499fbd0dce4b139875f5")
(setf (get pal_device_msgs::ShutdownAndWakeUpRobotResponse :datatype-) "pal_device_msgs/ShutdownAndWakeUpRobotResponse")
(setf (get pal_device_msgs::ShutdownAndWakeUpRobotResponse :definition-)
      "duration shutdown_duration

---
")



(provide :pal_device_msgs/ShutdownAndWakeUpRobot "1f8f568ec4dc499fbd0dce4b139875f5")


