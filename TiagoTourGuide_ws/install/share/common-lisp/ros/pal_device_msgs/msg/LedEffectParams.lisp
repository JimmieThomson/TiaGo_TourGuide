; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedEffectParams.msg.html

(cl:defclass <LedEffectParams> (roslisp-msg-protocol:ros-message)
  ((effectType
    :reader effectType
    :initarg :effectType
    :type cl:fixnum
    :initform 0)
   (fixed_color
    :reader fixed_color
    :initarg :fixed_color
    :type pal_device_msgs-msg:LedFixedColorParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedFixedColorParams))
   (rainbow
    :reader rainbow
    :initarg :rainbow
    :type pal_device_msgs-msg:LedRainbowParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedRainbowParams))
   (fade
    :reader fade
    :initarg :fade
    :type pal_device_msgs-msg:LedFadeParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedFadeParams))
   (blink
    :reader blink
    :initarg :blink
    :type pal_device_msgs-msg:LedBlinkParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedBlinkParams))
   (progress
    :reader progress
    :initarg :progress
    :type pal_device_msgs-msg:LedProgressParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedProgressParams))
   (flow
    :reader flow
    :initarg :flow
    :type pal_device_msgs-msg:LedFlowParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedFlowParams))
   (preprogrammed
    :reader preprogrammed
    :initarg :preprogrammed
    :type pal_device_msgs-msg:LedPreProgrammedParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedPreProgrammedParams))
   (effect_via_topic
    :reader effect_via_topic
    :initarg :effect_via_topic
    :type pal_device_msgs-msg:LedEffectViaTopicParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedEffectViaTopicParams))
   (data_array
    :reader data_array
    :initarg :data_array
    :type pal_device_msgs-msg:LedDataArrayParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedDataArrayParams)))
)

(cl:defclass LedEffectParams (<LedEffectParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedEffectParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedEffectParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedEffectParams> is deprecated: use pal_device_msgs-msg:LedEffectParams instead.")))

(cl:ensure-generic-function 'effectType-val :lambda-list '(m))
(cl:defmethod effectType-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:effectType-val is deprecated.  Use pal_device_msgs-msg:effectType instead.")
  (effectType m))

(cl:ensure-generic-function 'fixed_color-val :lambda-list '(m))
(cl:defmethod fixed_color-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:fixed_color-val is deprecated.  Use pal_device_msgs-msg:fixed_color instead.")
  (fixed_color m))

(cl:ensure-generic-function 'rainbow-val :lambda-list '(m))
(cl:defmethod rainbow-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:rainbow-val is deprecated.  Use pal_device_msgs-msg:rainbow instead.")
  (rainbow m))

(cl:ensure-generic-function 'fade-val :lambda-list '(m))
(cl:defmethod fade-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:fade-val is deprecated.  Use pal_device_msgs-msg:fade instead.")
  (fade m))

(cl:ensure-generic-function 'blink-val :lambda-list '(m))
(cl:defmethod blink-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:blink-val is deprecated.  Use pal_device_msgs-msg:blink instead.")
  (blink m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:progress-val is deprecated.  Use pal_device_msgs-msg:progress instead.")
  (progress m))

(cl:ensure-generic-function 'flow-val :lambda-list '(m))
(cl:defmethod flow-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:flow-val is deprecated.  Use pal_device_msgs-msg:flow instead.")
  (flow m))

(cl:ensure-generic-function 'preprogrammed-val :lambda-list '(m))
(cl:defmethod preprogrammed-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:preprogrammed-val is deprecated.  Use pal_device_msgs-msg:preprogrammed instead.")
  (preprogrammed m))

(cl:ensure-generic-function 'effect_via_topic-val :lambda-list '(m))
(cl:defmethod effect_via_topic-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:effect_via_topic-val is deprecated.  Use pal_device_msgs-msg:effect_via_topic instead.")
  (effect_via_topic m))

(cl:ensure-generic-function 'data_array-val :lambda-list '(m))
(cl:defmethod data_array-val ((m <LedEffectParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:data_array-val is deprecated.  Use pal_device_msgs-msg:data_array instead.")
  (data_array m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LedEffectParams>)))
    "Constants for message type '<LedEffectParams>"
  '((:FIXED_COLOR . 0)
    (:RAINBOW . 1)
    (:FADE . 2)
    (:BLINK . 3)
    (:PROGRESS . 4)
    (:FLOW . 5)
    (:PREPROGRAMMED_EFFECT . 6)
    (:EFFECT_VIA_TOPIC . 7)
    (:DATA_ARRAY . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LedEffectParams)))
    "Constants for message type 'LedEffectParams"
  '((:FIXED_COLOR . 0)
    (:RAINBOW . 1)
    (:FADE . 2)
    (:BLINK . 3)
    (:PROGRESS . 4)
    (:FLOW . 5)
    (:PREPROGRAMMED_EFFECT . 6)
    (:EFFECT_VIA_TOPIC . 7)
    (:DATA_ARRAY . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedEffectParams>) ostream)
  "Serializes a message object of type '<LedEffectParams>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectType)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fixed_color) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rainbow) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fade) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'blink) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'progress) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'flow) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'preprogrammed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'effect_via_topic) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data_array) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedEffectParams>) istream)
  "Deserializes a message object of type '<LedEffectParams>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectType)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fixed_color) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rainbow) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fade) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'blink) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'progress) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'flow) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'preprogrammed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'effect_via_topic) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data_array) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedEffectParams>)))
  "Returns string type for a message object of type '<LedEffectParams>"
  "pal_device_msgs/LedEffectParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedEffectParams)))
  "Returns string type for a message object of type 'LedEffectParams"
  "pal_device_msgs/LedEffectParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedEffectParams>)))
  "Returns md5sum for a message object of type '<LedEffectParams>"
  "cf78e4edf6ae7c6ce024d091a1a3c19a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedEffectParams)))
  "Returns md5sum for a message object of type 'LedEffectParams"
  "cf78e4edf6ae7c6ce024d091a1a3c19a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedEffectParams>)))
  "Returns full string definition for message of type '<LedEffectParams>"
  (cl:format cl:nil "uint8 FIXED_COLOR=0~%uint8 RAINBOW=1~%uint8 FADE=2~%uint8 BLINK=3~%uint8 PROGRESS=4~%uint8 FLOW=5~%uint8 PREPROGRAMMED_EFFECT=6~%uint8 EFFECT_VIA_TOPIC=7~%uint8 DATA_ARRAY=8~%~%uint8 effectType~%~%# RGBA of color, alpha will be used as intensity if supported by the led~%pal_device_msgs/LedFixedColorParams fixed_color~%pal_device_msgs/LedRainbowParams rainbow~%pal_device_msgs/LedFadeParams fade~%pal_device_msgs/LedBlinkParams blink~%pal_device_msgs/LedProgressParams progress~%pal_device_msgs/LedFlowParams flow~%#Below are device specific, avoid them if you can~%pal_device_msgs/LedPreProgrammedParams preprogrammed~%pal_device_msgs/LedEffectViaTopicParams effect_via_topic~%pal_device_msgs/LedDataArrayParams data_array~%~%================================================================================~%MSG: pal_device_msgs/LedFixedColorParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: pal_device_msgs/LedRainbowParams~%# Time to perform rainbow~%duration transition_duration~%~%================================================================================~%MSG: pal_device_msgs/LedFadeParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Duration of the transition from one color to the other~%duration transition_duration~%~%#Perform a fade when going from secondColor to firstColor~%bool reverse_fade~%~%~%================================================================================~%MSG: pal_device_msgs/LedBlinkParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%duration first_color_duration~%duration second_color_duration~%~%~%================================================================================~%MSG: pal_device_msgs/LedProgressParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Percentage of pixels painted with the first color~%float32 percentage~%#Offset to begin painting the first color~%float32 led_offset ~%~%~%================================================================================~%MSG: pal_device_msgs/LedFlowParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%# Percentage of pixels painted with the first color~%float32 percentage~%# Flow velocity~%float32 velocity~%~%~%================================================================================~%MSG: pal_device_msgs/LedPreProgrammedParams~%#Id of pre-programmed effect, most likely device specific~%uint8 preprogrammed_id~%~%================================================================================~%MSG: pal_device_msgs/LedEffectViaTopicParams~%#Topic name, must be of type pal_device_msgs/LedDataArray~%string topic_name~%~%================================================================================~%MSG: pal_device_msgs/LedDataArrayParams~%#Data of the effect, each element in the array represents a led, ~%#length should match device led count~%#For devices with no RGB option, just the alpha channel will be used~%std_msgs/ColorRGBA[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedEffectParams)))
  "Returns full string definition for message of type 'LedEffectParams"
  (cl:format cl:nil "uint8 FIXED_COLOR=0~%uint8 RAINBOW=1~%uint8 FADE=2~%uint8 BLINK=3~%uint8 PROGRESS=4~%uint8 FLOW=5~%uint8 PREPROGRAMMED_EFFECT=6~%uint8 EFFECT_VIA_TOPIC=7~%uint8 DATA_ARRAY=8~%~%uint8 effectType~%~%# RGBA of color, alpha will be used as intensity if supported by the led~%pal_device_msgs/LedFixedColorParams fixed_color~%pal_device_msgs/LedRainbowParams rainbow~%pal_device_msgs/LedFadeParams fade~%pal_device_msgs/LedBlinkParams blink~%pal_device_msgs/LedProgressParams progress~%pal_device_msgs/LedFlowParams flow~%#Below are device specific, avoid them if you can~%pal_device_msgs/LedPreProgrammedParams preprogrammed~%pal_device_msgs/LedEffectViaTopicParams effect_via_topic~%pal_device_msgs/LedDataArrayParams data_array~%~%================================================================================~%MSG: pal_device_msgs/LedFixedColorParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: pal_device_msgs/LedRainbowParams~%# Time to perform rainbow~%duration transition_duration~%~%================================================================================~%MSG: pal_device_msgs/LedFadeParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Duration of the transition from one color to the other~%duration transition_duration~%~%#Perform a fade when going from secondColor to firstColor~%bool reverse_fade~%~%~%================================================================================~%MSG: pal_device_msgs/LedBlinkParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%duration first_color_duration~%duration second_color_duration~%~%~%================================================================================~%MSG: pal_device_msgs/LedProgressParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Percentage of pixels painted with the first color~%float32 percentage~%#Offset to begin painting the first color~%float32 led_offset ~%~%~%================================================================================~%MSG: pal_device_msgs/LedFlowParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%# Percentage of pixels painted with the first color~%float32 percentage~%# Flow velocity~%float32 velocity~%~%~%================================================================================~%MSG: pal_device_msgs/LedPreProgrammedParams~%#Id of pre-programmed effect, most likely device specific~%uint8 preprogrammed_id~%~%================================================================================~%MSG: pal_device_msgs/LedEffectViaTopicParams~%#Topic name, must be of type pal_device_msgs/LedDataArray~%string topic_name~%~%================================================================================~%MSG: pal_device_msgs/LedDataArrayParams~%#Data of the effect, each element in the array represents a led, ~%#length should match device led count~%#For devices with no RGB option, just the alpha channel will be used~%std_msgs/ColorRGBA[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedEffectParams>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fixed_color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rainbow))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fade))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'blink))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'progress))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'flow))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'preprogrammed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'effect_via_topic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data_array))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedEffectParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedEffectParams
    (cl:cons ':effectType (effectType msg))
    (cl:cons ':fixed_color (fixed_color msg))
    (cl:cons ':rainbow (rainbow msg))
    (cl:cons ':fade (fade msg))
    (cl:cons ':blink (blink msg))
    (cl:cons ':progress (progress msg))
    (cl:cons ':flow (flow msg))
    (cl:cons ':preprogrammed (preprogrammed msg))
    (cl:cons ':effect_via_topic (effect_via_topic msg))
    (cl:cons ':data_array (data_array msg))
))
