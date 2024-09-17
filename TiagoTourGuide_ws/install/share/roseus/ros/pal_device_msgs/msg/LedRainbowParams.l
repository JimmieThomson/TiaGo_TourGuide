;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedRainbowParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedRainbowParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDRAINBOWPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDRAINBOWPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedRainbowParams.msg.html


(defclass pal_device_msgs::LedRainbowParams
  :super ros::object
  :slots (_transition_duration ))

(defmethod pal_device_msgs::LedRainbowParams
  (:init
   (&key
    ((:transition_duration __transition_duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _transition_duration __transition_duration)
   self)
  (:transition_duration
   (&optional __transition_duration)
   (if __transition_duration (setq _transition_duration __transition_duration)) _transition_duration)
  (:serialization-length
   ()
   (+
    ;; duration _transition_duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _transition_duration
       (write-long (send _transition_duration :sec) s) (write-long (send _transition_duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _transition_duration
     (send _transition_duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _transition_duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_device_msgs::LedRainbowParams :md5sum-) "f44f9582c55f88a544d929daa76e5ae7")
(setf (get pal_device_msgs::LedRainbowParams :datatype-) "pal_device_msgs/LedRainbowParams")
(setf (get pal_device_msgs::LedRainbowParams :definition-)
      "# Time to perform rainbow
duration transition_duration

")



(provide :pal_device_msgs/LedRainbowParams "f44f9582c55f88a544d929daa76e5ae7")


