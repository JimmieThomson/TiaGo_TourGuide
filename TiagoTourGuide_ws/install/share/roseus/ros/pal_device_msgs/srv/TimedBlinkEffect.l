;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::TimedBlinkEffect)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'TimedBlinkEffect (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::TIMEDBLINKEFFECT")
  (make-package "PAL_DEVICE_MSGS::TIMEDBLINKEFFECT"))
(unless (find-package "PAL_DEVICE_MSGS::TIMEDBLINKEFFECTREQUEST")
  (make-package "PAL_DEVICE_MSGS::TIMEDBLINKEFFECTREQUEST"))
(unless (find-package "PAL_DEVICE_MSGS::TIMEDBLINKEFFECTRESPONSE")
  (make-package "PAL_DEVICE_MSGS::TIMEDBLINKEFFECTRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass pal_device_msgs::TimedBlinkEffectRequest
  :super ros::object
  :slots (_leds _firstColor _secondColor _firstColorDuration _secondColorDuration _effectDuration _priority ))

(defmethod pal_device_msgs::TimedBlinkEffectRequest
  (:init
   (&key
    ((:leds __leds) (instance pal_device_msgs::LedGroup :init))
    ((:firstColor __firstColor) (instance std_msgs::ColorRGBA :init))
    ((:secondColor __secondColor) (instance std_msgs::ColorRGBA :init))
    ((:firstColorDuration __firstColorDuration) (instance ros::time :init))
    ((:secondColorDuration __secondColorDuration) (instance ros::time :init))
    ((:effectDuration __effectDuration) (instance ros::time :init))
    ((:priority __priority) 0)
    )
   (send-super :init)
   (setq _leds __leds)
   (setq _firstColor __firstColor)
   (setq _secondColor __secondColor)
   (setq _firstColorDuration __firstColorDuration)
   (setq _secondColorDuration __secondColorDuration)
   (setq _effectDuration __effectDuration)
   (setq _priority (round __priority))
   self)
  (:leds
   (&rest __leds)
   (if (keywordp (car __leds))
       (send* _leds __leds)
     (progn
       (if __leds (setq _leds (car __leds)))
       _leds)))
  (:firstColor
   (&rest __firstColor)
   (if (keywordp (car __firstColor))
       (send* _firstColor __firstColor)
     (progn
       (if __firstColor (setq _firstColor (car __firstColor)))
       _firstColor)))
  (:secondColor
   (&rest __secondColor)
   (if (keywordp (car __secondColor))
       (send* _secondColor __secondColor)
     (progn
       (if __secondColor (setq _secondColor (car __secondColor)))
       _secondColor)))
  (:firstColorDuration
   (&optional __firstColorDuration)
   (if __firstColorDuration (setq _firstColorDuration __firstColorDuration)) _firstColorDuration)
  (:secondColorDuration
   (&optional __secondColorDuration)
   (if __secondColorDuration (setq _secondColorDuration __secondColorDuration)) _secondColorDuration)
  (:effectDuration
   (&optional __effectDuration)
   (if __effectDuration (setq _effectDuration __effectDuration)) _effectDuration)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; pal_device_msgs/LedGroup _leds
    (send _leds :serialization-length)
    ;; std_msgs/ColorRGBA _firstColor
    (send _firstColor :serialization-length)
    ;; std_msgs/ColorRGBA _secondColor
    (send _secondColor :serialization-length)
    ;; duration _firstColorDuration
    8
    ;; duration _secondColorDuration
    8
    ;; duration _effectDuration
    8
    ;; uint8 _priority
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_device_msgs/LedGroup _leds
       (send _leds :serialize s)
     ;; std_msgs/ColorRGBA _firstColor
       (send _firstColor :serialize s)
     ;; std_msgs/ColorRGBA _secondColor
       (send _secondColor :serialize s)
     ;; duration _firstColorDuration
       (write-long (send _firstColorDuration :sec) s) (write-long (send _firstColorDuration :nsec) s)
     ;; duration _secondColorDuration
       (write-long (send _secondColorDuration :sec) s) (write-long (send _secondColorDuration :nsec) s)
     ;; duration _effectDuration
       (write-long (send _effectDuration :sec) s) (write-long (send _effectDuration :nsec) s)
     ;; uint8 _priority
       (write-byte _priority s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_device_msgs/LedGroup _leds
     (send _leds :deserialize buf ptr-) (incf ptr- (send _leds :serialization-length))
   ;; std_msgs/ColorRGBA _firstColor
     (send _firstColor :deserialize buf ptr-) (incf ptr- (send _firstColor :serialization-length))
   ;; std_msgs/ColorRGBA _secondColor
     (send _secondColor :deserialize buf ptr-) (incf ptr- (send _secondColor :serialization-length))
   ;; duration _firstColorDuration
     (send _firstColorDuration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _firstColorDuration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _secondColorDuration
     (send _secondColorDuration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _secondColorDuration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _effectDuration
     (send _effectDuration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _effectDuration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _priority
     (setq _priority (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_device_msgs::TimedBlinkEffectResponse
  :super ros::object
  :slots (_effectId ))

(defmethod pal_device_msgs::TimedBlinkEffectResponse
  (:init
   (&key
    ((:effectId __effectId) 0)
    )
   (send-super :init)
   (setq _effectId (round __effectId))
   self)
  (:effectId
   (&optional __effectId)
   (if __effectId (setq _effectId __effectId)) _effectId)
  (:serialization-length
   ()
   (+
    ;; uint32 _effectId
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _effectId
       (write-long _effectId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _effectId
     (setq _effectId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pal_device_msgs::TimedBlinkEffect
  :super ros::object
  :slots ())

(setf (get pal_device_msgs::TimedBlinkEffect :md5sum-) "79f0d7fa42ad812456d328f694635ba8")
(setf (get pal_device_msgs::TimedBlinkEffect :datatype-) "pal_device_msgs/TimedBlinkEffect")
(setf (get pal_device_msgs::TimedBlinkEffect :request) pal_device_msgs::TimedBlinkEffectRequest)
(setf (get pal_device_msgs::TimedBlinkEffect :response) pal_device_msgs::TimedBlinkEffectResponse)

(defmethod pal_device_msgs::TimedBlinkEffectRequest
  (:response () (instance pal_device_msgs::TimedBlinkEffectResponse :init)))

(setf (get pal_device_msgs::TimedBlinkEffectRequest :md5sum-) "79f0d7fa42ad812456d328f694635ba8")
(setf (get pal_device_msgs::TimedBlinkEffectRequest :datatype-) "pal_device_msgs/TimedBlinkEffectRequest")
(setf (get pal_device_msgs::TimedBlinkEffectRequest :definition-)
      "# Sets led blink effect. Displays firstColor during firstColorDuration time, and then secondColor during secondColorDuration time

LedGroup leds

# RGBA of color, transparency is not available in leds, so alpha will be ignored
std_msgs/ColorRGBA firstColor
std_msgs/ColorRGBA secondColor

duration firstColorDuration
duration secondColorDuration


#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever
duration effectDuration

#priority of the effect, 0 is no priority, 255 is max priority
uint8 priority


================================================================================
MSG: pal_device_msgs/LedGroup
byte LEFT_EAR = 1
byte RIGHT_EAR = 2

#OR-mask of the selected leds
uint32 ledMask

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---
#Id of the effect, used to cancel an effect
uint32 effectId
# True if leds specified exist. False if no leds were found

")

(setf (get pal_device_msgs::TimedBlinkEffectResponse :md5sum-) "79f0d7fa42ad812456d328f694635ba8")
(setf (get pal_device_msgs::TimedBlinkEffectResponse :datatype-) "pal_device_msgs/TimedBlinkEffectResponse")
(setf (get pal_device_msgs::TimedBlinkEffectResponse :definition-)
      "# Sets led blink effect. Displays firstColor during firstColorDuration time, and then secondColor during secondColorDuration time

LedGroup leds

# RGBA of color, transparency is not available in leds, so alpha will be ignored
std_msgs/ColorRGBA firstColor
std_msgs/ColorRGBA secondColor

duration firstColorDuration
duration secondColorDuration


#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever
duration effectDuration

#priority of the effect, 0 is no priority, 255 is max priority
uint8 priority


================================================================================
MSG: pal_device_msgs/LedGroup
byte LEFT_EAR = 1
byte RIGHT_EAR = 2

#OR-mask of the selected leds
uint32 ledMask

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---
#Id of the effect, used to cancel an effect
uint32 effectId
# True if leds specified exist. False if no leds were found

")



(provide :pal_device_msgs/TimedBlinkEffect "79f0d7fa42ad812456d328f694635ba8")


