;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::TimedColourEffect)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'TimedColourEffect (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::TIMEDCOLOUREFFECT")
  (make-package "PAL_DEVICE_MSGS::TIMEDCOLOUREFFECT"))
(unless (find-package "PAL_DEVICE_MSGS::TIMEDCOLOUREFFECTREQUEST")
  (make-package "PAL_DEVICE_MSGS::TIMEDCOLOUREFFECTREQUEST"))
(unless (find-package "PAL_DEVICE_MSGS::TIMEDCOLOUREFFECTRESPONSE")
  (make-package "PAL_DEVICE_MSGS::TIMEDCOLOUREFFECTRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass pal_device_msgs::TimedColourEffectRequest
  :super ros::object
  :slots (_leds _color _effectDuration _priority ))

(defmethod pal_device_msgs::TimedColourEffectRequest
  (:init
   (&key
    ((:leds __leds) (instance pal_device_msgs::LedGroup :init))
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    ((:effectDuration __effectDuration) (instance ros::time :init))
    ((:priority __priority) 0)
    )
   (send-super :init)
   (setq _leds __leds)
   (setq _color __color)
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
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
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
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
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
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
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
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; duration _effectDuration
     (send _effectDuration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _effectDuration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _priority
     (setq _priority (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_device_msgs::TimedColourEffectResponse
  :super ros::object
  :slots (_effectId ))

(defmethod pal_device_msgs::TimedColourEffectResponse
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

(defclass pal_device_msgs::TimedColourEffect
  :super ros::object
  :slots ())

(setf (get pal_device_msgs::TimedColourEffect :md5sum-) "446dd7c0390146877c87058289d0f887")
(setf (get pal_device_msgs::TimedColourEffect :datatype-) "pal_device_msgs/TimedColourEffect")
(setf (get pal_device_msgs::TimedColourEffect :request) pal_device_msgs::TimedColourEffectRequest)
(setf (get pal_device_msgs::TimedColourEffect :response) pal_device_msgs::TimedColourEffectResponse)

(defmethod pal_device_msgs::TimedColourEffectRequest
  (:response () (instance pal_device_msgs::TimedColourEffectResponse :init)))

(setf (get pal_device_msgs::TimedColourEffectRequest :md5sum-) "446dd7c0390146877c87058289d0f887")
(setf (get pal_device_msgs::TimedColourEffectRequest :datatype-) "pal_device_msgs/TimedColourEffectRequest")
(setf (get pal_device_msgs::TimedColourEffectRequest :definition-)
      "# Sets led color

LedGroup leds

# RGBA of color, transparency is not available in leds, so alpha will be ignored
std_msgs/ColorRGBA color

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

(setf (get pal_device_msgs::TimedColourEffectResponse :md5sum-) "446dd7c0390146877c87058289d0f887")
(setf (get pal_device_msgs::TimedColourEffectResponse :datatype-) "pal_device_msgs/TimedColourEffectResponse")
(setf (get pal_device_msgs::TimedColourEffectResponse :definition-)
      "# Sets led color

LedGroup leds

# RGBA of color, transparency is not available in leds, so alpha will be ignored
std_msgs/ColorRGBA color

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



(provide :pal_device_msgs/TimedColourEffect "446dd7c0390146877c87058289d0f887")


