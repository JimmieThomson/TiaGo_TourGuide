;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::TimedFadeEffect)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'TimedFadeEffect (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::TIMEDFADEEFFECT")
  (make-package "PAL_DEVICE_MSGS::TIMEDFADEEFFECT"))
(unless (find-package "PAL_DEVICE_MSGS::TIMEDFADEEFFECTREQUEST")
  (make-package "PAL_DEVICE_MSGS::TIMEDFADEEFFECTREQUEST"))
(unless (find-package "PAL_DEVICE_MSGS::TIMEDFADEEFFECTRESPONSE")
  (make-package "PAL_DEVICE_MSGS::TIMEDFADEEFFECTRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass pal_device_msgs::TimedFadeEffectRequest
  :super ros::object
  :slots (_leds _firstColor _secondColor _colorChangeDuration _reverseFade _effectDuration _priority ))

(defmethod pal_device_msgs::TimedFadeEffectRequest
  (:init
   (&key
    ((:leds __leds) (instance pal_device_msgs::LedGroup :init))
    ((:firstColor __firstColor) (instance std_msgs::ColorRGBA :init))
    ((:secondColor __secondColor) (instance std_msgs::ColorRGBA :init))
    ((:colorChangeDuration __colorChangeDuration) (instance ros::time :init))
    ((:reverseFade __reverseFade) nil)
    ((:effectDuration __effectDuration) (instance ros::time :init))
    ((:priority __priority) 0)
    )
   (send-super :init)
   (setq _leds __leds)
   (setq _firstColor __firstColor)
   (setq _secondColor __secondColor)
   (setq _colorChangeDuration __colorChangeDuration)
   (setq _reverseFade __reverseFade)
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
  (:colorChangeDuration
   (&optional __colorChangeDuration)
   (if __colorChangeDuration (setq _colorChangeDuration __colorChangeDuration)) _colorChangeDuration)
  (:reverseFade
   (&optional (__reverseFade :null))
   (if (not (eq __reverseFade :null)) (setq _reverseFade __reverseFade)) _reverseFade)
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
    ;; duration _colorChangeDuration
    8
    ;; bool _reverseFade
    1
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
     ;; duration _colorChangeDuration
       (write-long (send _colorChangeDuration :sec) s) (write-long (send _colorChangeDuration :nsec) s)
     ;; bool _reverseFade
       (if _reverseFade (write-byte -1 s) (write-byte 0 s))
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
   ;; duration _colorChangeDuration
     (send _colorChangeDuration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _colorChangeDuration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _reverseFade
     (setq _reverseFade (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; duration _effectDuration
     (send _effectDuration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _effectDuration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _priority
     (setq _priority (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_device_msgs::TimedFadeEffectResponse
  :super ros::object
  :slots (_effectId ))

(defmethod pal_device_msgs::TimedFadeEffectResponse
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

(defclass pal_device_msgs::TimedFadeEffect
  :super ros::object
  :slots ())

(setf (get pal_device_msgs::TimedFadeEffect :md5sum-) "1603cab1f4c5a65749eacb96def5fe41")
(setf (get pal_device_msgs::TimedFadeEffect :datatype-) "pal_device_msgs/TimedFadeEffect")
(setf (get pal_device_msgs::TimedFadeEffect :request) pal_device_msgs::TimedFadeEffectRequest)
(setf (get pal_device_msgs::TimedFadeEffect :response) pal_device_msgs::TimedFadeEffectResponse)

(defmethod pal_device_msgs::TimedFadeEffectRequest
  (:response () (instance pal_device_msgs::TimedFadeEffectResponse :init)))

(setf (get pal_device_msgs::TimedFadeEffectRequest :md5sum-) "1603cab1f4c5a65749eacb96def5fe41")
(setf (get pal_device_msgs::TimedFadeEffectRequest :datatype-) "pal_device_msgs/TimedFadeEffectRequest")
(setf (get pal_device_msgs::TimedFadeEffectRequest :definition-)
      "# Sets led fade effect. Displays firstColor during firstColorDuration time, and then secondColor during secondColorDuration time with a fade between them

LedGroup leds

# RGBA of color, transparency is not available in leds, so alpha will be ignored
std_msgs/ColorRGBA firstColor
std_msgs/ColorRGBA secondColor

#Duration of the transition from one color to the other
duration colorChangeDuration

#Perform a fade when going from secondColor to firstColor
bool reverseFade

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

# True if no errors


")

(setf (get pal_device_msgs::TimedFadeEffectResponse :md5sum-) "1603cab1f4c5a65749eacb96def5fe41")
(setf (get pal_device_msgs::TimedFadeEffectResponse :datatype-) "pal_device_msgs/TimedFadeEffectResponse")
(setf (get pal_device_msgs::TimedFadeEffectResponse :definition-)
      "# Sets led fade effect. Displays firstColor during firstColorDuration time, and then secondColor during secondColorDuration time with a fade between them

LedGroup leds

# RGBA of color, transparency is not available in leds, so alpha will be ignored
std_msgs/ColorRGBA firstColor
std_msgs/ColorRGBA secondColor

#Duration of the transition from one color to the other
duration colorChangeDuration

#Perform a fade when going from secondColor to firstColor
bool reverseFade

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

# True if no errors


")



(provide :pal_device_msgs/TimedFadeEffect "1603cab1f4c5a65749eacb96def5fe41")


