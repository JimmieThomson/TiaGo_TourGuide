;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedFixedColorParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedFixedColorParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDFIXEDCOLORPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDFIXEDCOLORPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedFixedColorParams.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_device_msgs::LedFixedColorParams
  :super ros::object
  :slots (_color ))

(defmethod pal_device_msgs::LedFixedColorParams
  (:init
   (&key
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _color __color)
   self)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(setf (get pal_device_msgs::LedFixedColorParams :md5sum-) "3e04b62b1b39cd97e873789f0bb130e7")
(setf (get pal_device_msgs::LedFixedColorParams :datatype-) "pal_device_msgs/LedFixedColorParams")
(setf (get pal_device_msgs::LedFixedColorParams :definition-)
      "# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA color

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :pal_device_msgs/LedFixedColorParams "3e04b62b1b39cd97e873789f0bb130e7")


