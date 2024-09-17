;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedBlinkParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedBlinkParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDBLINKPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDBLINKPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedBlinkParams.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_device_msgs::LedBlinkParams
  :super ros::object
  :slots (_first_color _second_color _first_color_duration _second_color_duration ))

(defmethod pal_device_msgs::LedBlinkParams
  (:init
   (&key
    ((:first_color __first_color) (instance std_msgs::ColorRGBA :init))
    ((:second_color __second_color) (instance std_msgs::ColorRGBA :init))
    ((:first_color_duration __first_color_duration) (instance ros::time :init))
    ((:second_color_duration __second_color_duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _first_color __first_color)
   (setq _second_color __second_color)
   (setq _first_color_duration __first_color_duration)
   (setq _second_color_duration __second_color_duration)
   self)
  (:first_color
   (&rest __first_color)
   (if (keywordp (car __first_color))
       (send* _first_color __first_color)
     (progn
       (if __first_color (setq _first_color (car __first_color)))
       _first_color)))
  (:second_color
   (&rest __second_color)
   (if (keywordp (car __second_color))
       (send* _second_color __second_color)
     (progn
       (if __second_color (setq _second_color (car __second_color)))
       _second_color)))
  (:first_color_duration
   (&optional __first_color_duration)
   (if __first_color_duration (setq _first_color_duration __first_color_duration)) _first_color_duration)
  (:second_color_duration
   (&optional __second_color_duration)
   (if __second_color_duration (setq _second_color_duration __second_color_duration)) _second_color_duration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/ColorRGBA _first_color
    (send _first_color :serialization-length)
    ;; std_msgs/ColorRGBA _second_color
    (send _second_color :serialization-length)
    ;; duration _first_color_duration
    8
    ;; duration _second_color_duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA _first_color
       (send _first_color :serialize s)
     ;; std_msgs/ColorRGBA _second_color
       (send _second_color :serialize s)
     ;; duration _first_color_duration
       (write-long (send _first_color_duration :sec) s) (write-long (send _first_color_duration :nsec) s)
     ;; duration _second_color_duration
       (write-long (send _second_color_duration :sec) s) (write-long (send _second_color_duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA _first_color
     (send _first_color :deserialize buf ptr-) (incf ptr- (send _first_color :serialization-length))
   ;; std_msgs/ColorRGBA _second_color
     (send _second_color :deserialize buf ptr-) (incf ptr- (send _second_color :serialization-length))
   ;; duration _first_color_duration
     (send _first_color_duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _first_color_duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _second_color_duration
     (send _second_color_duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _second_color_duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_device_msgs::LedBlinkParams :md5sum-) "0b26c0fa483854105ff61f62de102ca5")
(setf (get pal_device_msgs::LedBlinkParams :datatype-) "pal_device_msgs/LedBlinkParams")
(setf (get pal_device_msgs::LedBlinkParams :definition-)
      "# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA first_color
std_msgs/ColorRGBA second_color

duration first_color_duration
duration second_color_duration


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :pal_device_msgs/LedBlinkParams "0b26c0fa483854105ff61f62de102ca5")


