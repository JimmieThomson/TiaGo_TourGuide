;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedEffectParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedEffectParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedEffectParams.msg.html


(intern "*FIXED_COLOR*" (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(shadow '*FIXED_COLOR* (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(defconstant pal_device_msgs::LedEffectParams::*FIXED_COLOR* 0)
(intern "*RAINBOW*" (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(shadow '*RAINBOW* (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(defconstant pal_device_msgs::LedEffectParams::*RAINBOW* 1)
(intern "*FADE*" (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(shadow '*FADE* (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(defconstant pal_device_msgs::LedEffectParams::*FADE* 2)
(intern "*BLINK*" (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(shadow '*BLINK* (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(defconstant pal_device_msgs::LedEffectParams::*BLINK* 3)
(intern "*PROGRESS*" (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(shadow '*PROGRESS* (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(defconstant pal_device_msgs::LedEffectParams::*PROGRESS* 4)
(intern "*FLOW*" (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(shadow '*FLOW* (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(defconstant pal_device_msgs::LedEffectParams::*FLOW* 5)
(intern "*PREPROGRAMMED_EFFECT*" (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(shadow '*PREPROGRAMMED_EFFECT* (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(defconstant pal_device_msgs::LedEffectParams::*PREPROGRAMMED_EFFECT* 6)
(intern "*EFFECT_VIA_TOPIC*" (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(shadow '*EFFECT_VIA_TOPIC* (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(defconstant pal_device_msgs::LedEffectParams::*EFFECT_VIA_TOPIC* 7)
(intern "*DATA_ARRAY*" (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(shadow '*DATA_ARRAY* (find-package "PAL_DEVICE_MSGS::LEDEFFECTPARAMS"))
(defconstant pal_device_msgs::LedEffectParams::*DATA_ARRAY* 8)

(defun pal_device_msgs::LedEffectParams-to-symbol (const)
  (cond
        ((= const 0) 'pal_device_msgs::LedEffectParams::*FIXED_COLOR*)
        ((= const 1) 'pal_device_msgs::LedEffectParams::*RAINBOW*)
        ((= const 2) 'pal_device_msgs::LedEffectParams::*FADE*)
        ((= const 3) 'pal_device_msgs::LedEffectParams::*BLINK*)
        ((= const 4) 'pal_device_msgs::LedEffectParams::*PROGRESS*)
        ((= const 5) 'pal_device_msgs::LedEffectParams::*FLOW*)
        ((= const 6) 'pal_device_msgs::LedEffectParams::*PREPROGRAMMED_EFFECT*)
        ((= const 7) 'pal_device_msgs::LedEffectParams::*EFFECT_VIA_TOPIC*)
        ((= const 8) 'pal_device_msgs::LedEffectParams::*DATA_ARRAY*)
        (t nil)))

(defclass pal_device_msgs::LedEffectParams
  :super ros::object
  :slots (_effectType _fixed_color _rainbow _fade _blink _progress _flow _preprogrammed _effect_via_topic _data_array ))

(defmethod pal_device_msgs::LedEffectParams
  (:init
   (&key
    ((:effectType __effectType) 0)
    ((:fixed_color __fixed_color) (instance pal_device_msgs::LedFixedColorParams :init))
    ((:rainbow __rainbow) (instance pal_device_msgs::LedRainbowParams :init))
    ((:fade __fade) (instance pal_device_msgs::LedFadeParams :init))
    ((:blink __blink) (instance pal_device_msgs::LedBlinkParams :init))
    ((:progress __progress) (instance pal_device_msgs::LedProgressParams :init))
    ((:flow __flow) (instance pal_device_msgs::LedFlowParams :init))
    ((:preprogrammed __preprogrammed) (instance pal_device_msgs::LedPreProgrammedParams :init))
    ((:effect_via_topic __effect_via_topic) (instance pal_device_msgs::LedEffectViaTopicParams :init))
    ((:data_array __data_array) (instance pal_device_msgs::LedDataArrayParams :init))
    )
   (send-super :init)
   (setq _effectType (round __effectType))
   (setq _fixed_color __fixed_color)
   (setq _rainbow __rainbow)
   (setq _fade __fade)
   (setq _blink __blink)
   (setq _progress __progress)
   (setq _flow __flow)
   (setq _preprogrammed __preprogrammed)
   (setq _effect_via_topic __effect_via_topic)
   (setq _data_array __data_array)
   self)
  (:effectType
   (&optional __effectType)
   (if __effectType (setq _effectType __effectType)) _effectType)
  (:fixed_color
   (&rest __fixed_color)
   (if (keywordp (car __fixed_color))
       (send* _fixed_color __fixed_color)
     (progn
       (if __fixed_color (setq _fixed_color (car __fixed_color)))
       _fixed_color)))
  (:rainbow
   (&rest __rainbow)
   (if (keywordp (car __rainbow))
       (send* _rainbow __rainbow)
     (progn
       (if __rainbow (setq _rainbow (car __rainbow)))
       _rainbow)))
  (:fade
   (&rest __fade)
   (if (keywordp (car __fade))
       (send* _fade __fade)
     (progn
       (if __fade (setq _fade (car __fade)))
       _fade)))
  (:blink
   (&rest __blink)
   (if (keywordp (car __blink))
       (send* _blink __blink)
     (progn
       (if __blink (setq _blink (car __blink)))
       _blink)))
  (:progress
   (&rest __progress)
   (if (keywordp (car __progress))
       (send* _progress __progress)
     (progn
       (if __progress (setq _progress (car __progress)))
       _progress)))
  (:flow
   (&rest __flow)
   (if (keywordp (car __flow))
       (send* _flow __flow)
     (progn
       (if __flow (setq _flow (car __flow)))
       _flow)))
  (:preprogrammed
   (&rest __preprogrammed)
   (if (keywordp (car __preprogrammed))
       (send* _preprogrammed __preprogrammed)
     (progn
       (if __preprogrammed (setq _preprogrammed (car __preprogrammed)))
       _preprogrammed)))
  (:effect_via_topic
   (&rest __effect_via_topic)
   (if (keywordp (car __effect_via_topic))
       (send* _effect_via_topic __effect_via_topic)
     (progn
       (if __effect_via_topic (setq _effect_via_topic (car __effect_via_topic)))
       _effect_via_topic)))
  (:data_array
   (&rest __data_array)
   (if (keywordp (car __data_array))
       (send* _data_array __data_array)
     (progn
       (if __data_array (setq _data_array (car __data_array)))
       _data_array)))
  (:serialization-length
   ()
   (+
    ;; uint8 _effectType
    1
    ;; pal_device_msgs/LedFixedColorParams _fixed_color
    (send _fixed_color :serialization-length)
    ;; pal_device_msgs/LedRainbowParams _rainbow
    (send _rainbow :serialization-length)
    ;; pal_device_msgs/LedFadeParams _fade
    (send _fade :serialization-length)
    ;; pal_device_msgs/LedBlinkParams _blink
    (send _blink :serialization-length)
    ;; pal_device_msgs/LedProgressParams _progress
    (send _progress :serialization-length)
    ;; pal_device_msgs/LedFlowParams _flow
    (send _flow :serialization-length)
    ;; pal_device_msgs/LedPreProgrammedParams _preprogrammed
    (send _preprogrammed :serialization-length)
    ;; pal_device_msgs/LedEffectViaTopicParams _effect_via_topic
    (send _effect_via_topic :serialization-length)
    ;; pal_device_msgs/LedDataArrayParams _data_array
    (send _data_array :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _effectType
       (write-byte _effectType s)
     ;; pal_device_msgs/LedFixedColorParams _fixed_color
       (send _fixed_color :serialize s)
     ;; pal_device_msgs/LedRainbowParams _rainbow
       (send _rainbow :serialize s)
     ;; pal_device_msgs/LedFadeParams _fade
       (send _fade :serialize s)
     ;; pal_device_msgs/LedBlinkParams _blink
       (send _blink :serialize s)
     ;; pal_device_msgs/LedProgressParams _progress
       (send _progress :serialize s)
     ;; pal_device_msgs/LedFlowParams _flow
       (send _flow :serialize s)
     ;; pal_device_msgs/LedPreProgrammedParams _preprogrammed
       (send _preprogrammed :serialize s)
     ;; pal_device_msgs/LedEffectViaTopicParams _effect_via_topic
       (send _effect_via_topic :serialize s)
     ;; pal_device_msgs/LedDataArrayParams _data_array
       (send _data_array :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _effectType
     (setq _effectType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; pal_device_msgs/LedFixedColorParams _fixed_color
     (send _fixed_color :deserialize buf ptr-) (incf ptr- (send _fixed_color :serialization-length))
   ;; pal_device_msgs/LedRainbowParams _rainbow
     (send _rainbow :deserialize buf ptr-) (incf ptr- (send _rainbow :serialization-length))
   ;; pal_device_msgs/LedFadeParams _fade
     (send _fade :deserialize buf ptr-) (incf ptr- (send _fade :serialization-length))
   ;; pal_device_msgs/LedBlinkParams _blink
     (send _blink :deserialize buf ptr-) (incf ptr- (send _blink :serialization-length))
   ;; pal_device_msgs/LedProgressParams _progress
     (send _progress :deserialize buf ptr-) (incf ptr- (send _progress :serialization-length))
   ;; pal_device_msgs/LedFlowParams _flow
     (send _flow :deserialize buf ptr-) (incf ptr- (send _flow :serialization-length))
   ;; pal_device_msgs/LedPreProgrammedParams _preprogrammed
     (send _preprogrammed :deserialize buf ptr-) (incf ptr- (send _preprogrammed :serialization-length))
   ;; pal_device_msgs/LedEffectViaTopicParams _effect_via_topic
     (send _effect_via_topic :deserialize buf ptr-) (incf ptr- (send _effect_via_topic :serialization-length))
   ;; pal_device_msgs/LedDataArrayParams _data_array
     (send _data_array :deserialize buf ptr-) (incf ptr- (send _data_array :serialization-length))
   ;;
   self)
  )

(setf (get pal_device_msgs::LedEffectParams :md5sum-) "cf78e4edf6ae7c6ce024d091a1a3c19a")
(setf (get pal_device_msgs::LedEffectParams :datatype-) "pal_device_msgs/LedEffectParams")
(setf (get pal_device_msgs::LedEffectParams :definition-)
      "uint8 FIXED_COLOR=0
uint8 RAINBOW=1
uint8 FADE=2
uint8 BLINK=3
uint8 PROGRESS=4
uint8 FLOW=5
uint8 PREPROGRAMMED_EFFECT=6
uint8 EFFECT_VIA_TOPIC=7
uint8 DATA_ARRAY=8

uint8 effectType

# RGBA of color, alpha will be used as intensity if supported by the led
pal_device_msgs/LedFixedColorParams fixed_color
pal_device_msgs/LedRainbowParams rainbow
pal_device_msgs/LedFadeParams fade
pal_device_msgs/LedBlinkParams blink
pal_device_msgs/LedProgressParams progress
pal_device_msgs/LedFlowParams flow
#Below are device specific, avoid them if you can
pal_device_msgs/LedPreProgrammedParams preprogrammed
pal_device_msgs/LedEffectViaTopicParams effect_via_topic
pal_device_msgs/LedDataArrayParams data_array

================================================================================
MSG: pal_device_msgs/LedFixedColorParams
# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA color

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: pal_device_msgs/LedRainbowParams
# Time to perform rainbow
duration transition_duration

================================================================================
MSG: pal_device_msgs/LedFadeParams
# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA first_color
std_msgs/ColorRGBA second_color

#Duration of the transition from one color to the other
duration transition_duration

#Perform a fade when going from secondColor to firstColor
bool reverse_fade


================================================================================
MSG: pal_device_msgs/LedBlinkParams
# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA first_color
std_msgs/ColorRGBA second_color

duration first_color_duration
duration second_color_duration


================================================================================
MSG: pal_device_msgs/LedProgressParams
# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA first_color
std_msgs/ColorRGBA second_color

#Percentage of pixels painted with the first color
float32 percentage
#Offset to begin painting the first color
float32 led_offset 


================================================================================
MSG: pal_device_msgs/LedFlowParams
# RGBA of color, alpha will be used as intensity if supported by the led
std_msgs/ColorRGBA first_color
std_msgs/ColorRGBA second_color

# Percentage of pixels painted with the first color
float32 percentage
# Flow velocity
float32 velocity


================================================================================
MSG: pal_device_msgs/LedPreProgrammedParams
#Id of pre-programmed effect, most likely device specific
uint8 preprogrammed_id

================================================================================
MSG: pal_device_msgs/LedEffectViaTopicParams
#Topic name, must be of type pal_device_msgs/LedDataArray
string topic_name

================================================================================
MSG: pal_device_msgs/LedDataArrayParams
#Data of the effect, each element in the array represents a led, 
#length should match device led count
#For devices with no RGB option, just the alpha channel will be used
std_msgs/ColorRGBA[] data

")



(provide :pal_device_msgs/LedEffectParams "cf78e4edf6ae7c6ce024d091a1a3c19a")


