;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedFadeParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedFadeParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDFADEPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDFADEPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedFadeParams.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_device_msgs::LedFadeParams
  :super ros::object
  :slots (_first_color _second_color _transition_duration _reverse_fade ))

(defmethod pal_device_msgs::LedFadeParams
  (:init
   (&key
    ((:first_color __first_color) (instance std_msgs::ColorRGBA :init))
    ((:second_color __second_color) (instance std_msgs::ColorRGBA :init))
    ((:transition_duration __transition_duration) (instance ros::time :init))
    ((:reverse_fade __reverse_fade) nil)
    )
   (send-super :init)
   (setq _first_color __first_color)
   (setq _second_color __second_color)
   (setq _transition_duration __transition_duration)
   (setq _reverse_fade __reverse_fade)
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
  (:transition_duration
   (&optional __transition_duration)
   (if __transition_duration (setq _transition_duration __transition_duration)) _transition_duration)
  (:reverse_fade
   (&optional (__reverse_fade :null))
   (if (not (eq __reverse_fade :null)) (setq _reverse_fade __reverse_fade)) _reverse_fade)
  (:serialization-length
   ()
   (+
    ;; std_msgs/ColorRGBA _first_color
    (send _first_color :serialization-length)
    ;; std_msgs/ColorRGBA _second_color
    (send _second_color :serialization-length)
    ;; duration _transition_duration
    8
    ;; bool _reverse_fade
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA _first_color
       (send _first_color :serialize s)
     ;; std_msgs/ColorRGBA _second_color
       (send _second_color :serialize s)
     ;; duration _transition_duration
       (write-long (send _transition_duration :sec) s) (write-long (send _transition_duration :nsec) s)
     ;; bool _reverse_fade
       (if _reverse_fade (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA _first_color
     (send _first_color :deserialize buf ptr-) (incf ptr- (send _first_color :serialization-length))
   ;; std_msgs/ColorRGBA _second_color
     (send _second_color :deserialize buf ptr-) (incf ptr- (send _second_color :serialization-length))
   ;; duration _transition_duration
     (send _transition_duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _transition_duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _reverse_fade
     (setq _reverse_fade (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_device_msgs::LedFadeParams :md5sum-) "21c3c0f93882d55f24f14be673a6ceb6")
(setf (get pal_device_msgs::LedFadeParams :datatype-) "pal_device_msgs/LedFadeParams")
(setf (get pal_device_msgs::LedFadeParams :definition-)
      "# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA first_color
std_msgs/ColorRGBA second_color

#Duration of the transition from one color to the other
duration transition_duration

#Perform a fade when going from secondColor to firstColor
bool reverse_fade


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :pal_device_msgs/LedFadeParams "21c3c0f93882d55f24f14be673a6ceb6")


