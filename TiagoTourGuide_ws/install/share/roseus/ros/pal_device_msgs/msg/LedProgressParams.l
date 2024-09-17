;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedProgressParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedProgressParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDPROGRESSPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDPROGRESSPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedProgressParams.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_device_msgs::LedProgressParams
  :super ros::object
  :slots (_first_color _second_color _percentage _led_offset ))

(defmethod pal_device_msgs::LedProgressParams
  (:init
   (&key
    ((:first_color __first_color) (instance std_msgs::ColorRGBA :init))
    ((:second_color __second_color) (instance std_msgs::ColorRGBA :init))
    ((:percentage __percentage) 0.0)
    ((:led_offset __led_offset) 0.0)
    )
   (send-super :init)
   (setq _first_color __first_color)
   (setq _second_color __second_color)
   (setq _percentage (float __percentage))
   (setq _led_offset (float __led_offset))
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
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:led_offset
   (&optional __led_offset)
   (if __led_offset (setq _led_offset __led_offset)) _led_offset)
  (:serialization-length
   ()
   (+
    ;; std_msgs/ColorRGBA _first_color
    (send _first_color :serialization-length)
    ;; std_msgs/ColorRGBA _second_color
    (send _second_color :serialization-length)
    ;; float32 _percentage
    4
    ;; float32 _led_offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA _first_color
       (send _first_color :serialize s)
     ;; std_msgs/ColorRGBA _second_color
       (send _second_color :serialize s)
     ;; float32 _percentage
       (sys::poke _percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _led_offset
       (sys::poke _led_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA _first_color
     (send _first_color :deserialize buf ptr-) (incf ptr- (send _first_color :serialization-length))
   ;; std_msgs/ColorRGBA _second_color
     (send _second_color :deserialize buf ptr-) (incf ptr- (send _second_color :serialization-length))
   ;; float32 _percentage
     (setq _percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _led_offset
     (setq _led_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_device_msgs::LedProgressParams :md5sum-) "941e895db6a3875d51a22a0a591d753a")
(setf (get pal_device_msgs::LedProgressParams :datatype-) "pal_device_msgs/LedProgressParams")
(setf (get pal_device_msgs::LedProgressParams :definition-)
      "# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA first_color
std_msgs/ColorRGBA second_color

#Percentage of pixels painted with the first color
float32 percentage
#Offset to begin painting the first color
float32 led_offset 


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :pal_device_msgs/LedProgressParams "941e895db6a3875d51a22a0a591d753a")


