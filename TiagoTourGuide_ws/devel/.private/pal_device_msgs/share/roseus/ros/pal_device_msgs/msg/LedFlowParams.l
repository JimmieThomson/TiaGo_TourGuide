;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedFlowParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedFlowParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDFLOWPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDFLOWPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedFlowParams.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_device_msgs::LedFlowParams
  :super ros::object
  :slots (_first_color _second_color _percentage _velocity ))

(defmethod pal_device_msgs::LedFlowParams
  (:init
   (&key
    ((:first_color __first_color) (instance std_msgs::ColorRGBA :init))
    ((:second_color __second_color) (instance std_msgs::ColorRGBA :init))
    ((:percentage __percentage) 0.0)
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _first_color __first_color)
   (setq _second_color __second_color)
   (setq _percentage (float __percentage))
   (setq _velocity (float __velocity))
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
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/ColorRGBA _first_color
    (send _first_color :serialization-length)
    ;; std_msgs/ColorRGBA _second_color
    (send _second_color :serialization-length)
    ;; float32 _percentage
    4
    ;; float32 _velocity
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
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_device_msgs::LedFlowParams :md5sum-) "21979ceeb94ec6f60e9114651282150e")
(setf (get pal_device_msgs::LedFlowParams :datatype-) "pal_device_msgs/LedFlowParams")
(setf (get pal_device_msgs::LedFlowParams :definition-)
      "# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA first_color
std_msgs/ColorRGBA second_color

# Percentage of pixels painted with the first color
float32 percentage
# Flow velocity
float32 velocity


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :pal_device_msgs/LedFlowParams "21979ceeb94ec6f60e9114651282150e")


