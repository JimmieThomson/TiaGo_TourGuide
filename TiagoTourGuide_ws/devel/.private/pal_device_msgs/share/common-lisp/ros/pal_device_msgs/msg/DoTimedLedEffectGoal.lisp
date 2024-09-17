; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude DoTimedLedEffectGoal.msg.html

(cl:defclass <DoTimedLedEffectGoal> (roslisp-msg-protocol:ros-message)
  ((devices
    :reader devices
    :initarg :devices
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (params
    :reader params
    :initarg :params
    :type pal_device_msgs-msg:LedEffectParams
    :initform (cl:make-instance 'pal_device_msgs-msg:LedEffectParams))
   (effectDuration
    :reader effectDuration
    :initarg :effectDuration
    :type cl:real
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DoTimedLedEffectGoal (<DoTimedLedEffectGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoTimedLedEffectGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoTimedLedEffectGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<DoTimedLedEffectGoal> is deprecated: use pal_device_msgs-msg:DoTimedLedEffectGoal instead.")))

(cl:ensure-generic-function 'devices-val :lambda-list '(m))
(cl:defmethod devices-val ((m <DoTimedLedEffectGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:devices-val is deprecated.  Use pal_device_msgs-msg:devices instead.")
  (devices m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <DoTimedLedEffectGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:params-val is deprecated.  Use pal_device_msgs-msg:params instead.")
  (params m))

(cl:ensure-generic-function 'effectDuration-val :lambda-list '(m))
(cl:defmethod effectDuration-val ((m <DoTimedLedEffectGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:effectDuration-val is deprecated.  Use pal_device_msgs-msg:effectDuration instead.")
  (effectDuration m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <DoTimedLedEffectGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:priority-val is deprecated.  Use pal_device_msgs-msg:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoTimedLedEffectGoal>) ostream)
  "Serializes a message object of type '<DoTimedLedEffectGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'devices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'devices))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'params) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'effectDuration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'effectDuration) (cl:floor (cl:slot-value msg 'effectDuration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoTimedLedEffectGoal>) istream)
  "Deserializes a message object of type '<DoTimedLedEffectGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'devices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'devices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'params) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'effectDuration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoTimedLedEffectGoal>)))
  "Returns string type for a message object of type '<DoTimedLedEffectGoal>"
  "pal_device_msgs/DoTimedLedEffectGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoTimedLedEffectGoal)))
  "Returns string type for a message object of type 'DoTimedLedEffectGoal"
  "pal_device_msgs/DoTimedLedEffectGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoTimedLedEffectGoal>)))
  "Returns md5sum for a message object of type '<DoTimedLedEffectGoal>"
  "e94eafb34df9ab3216d4d9fc90569af3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoTimedLedEffectGoal)))
  "Returns md5sum for a message object of type 'DoTimedLedEffectGoal"
  "e94eafb34df9ab3216d4d9fc90569af3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoTimedLedEffectGoal>)))
  "Returns full string definition for message of type '<DoTimedLedEffectGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#uint16 because uint8 is char[] in Python~%uint32[] devices~%~%#Contains parameters for all led effects, but only the selected effect type parameters shall be provided~%LedEffectParams params~%#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever~%duration effectDuration~%~%#priority of the effect, 0 is no priority, 255 is max priority~%uint8 priority~%~%================================================================================~%MSG: pal_device_msgs/LedEffectParams~%uint8 FIXED_COLOR=0~%uint8 RAINBOW=1~%uint8 FADE=2~%uint8 BLINK=3~%uint8 PROGRESS=4~%uint8 FLOW=5~%uint8 PREPROGRAMMED_EFFECT=6~%uint8 EFFECT_VIA_TOPIC=7~%uint8 DATA_ARRAY=8~%~%uint8 effectType~%~%# RGBA of color, alpha will be used as intensity if supported by the led~%pal_device_msgs/LedFixedColorParams fixed_color~%pal_device_msgs/LedRainbowParams rainbow~%pal_device_msgs/LedFadeParams fade~%pal_device_msgs/LedBlinkParams blink~%pal_device_msgs/LedProgressParams progress~%pal_device_msgs/LedFlowParams flow~%#Below are device specific, avoid them if you can~%pal_device_msgs/LedPreProgrammedParams preprogrammed~%pal_device_msgs/LedEffectViaTopicParams effect_via_topic~%pal_device_msgs/LedDataArrayParams data_array~%~%================================================================================~%MSG: pal_device_msgs/LedFixedColorParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: pal_device_msgs/LedRainbowParams~%# Time to perform rainbow~%duration transition_duration~%~%================================================================================~%MSG: pal_device_msgs/LedFadeParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Duration of the transition from one color to the other~%duration transition_duration~%~%#Perform a fade when going from secondColor to firstColor~%bool reverse_fade~%~%~%================================================================================~%MSG: pal_device_msgs/LedBlinkParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%duration first_color_duration~%duration second_color_duration~%~%~%================================================================================~%MSG: pal_device_msgs/LedProgressParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Percentage of pixels painted with the first color~%float32 percentage~%#Offset to begin painting the first color~%float32 led_offset ~%~%~%================================================================================~%MSG: pal_device_msgs/LedFlowParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%# Percentage of pixels painted with the first color~%float32 percentage~%# Flow velocity~%float32 velocity~%~%~%================================================================================~%MSG: pal_device_msgs/LedPreProgrammedParams~%#Id of pre-programmed effect, most likely device specific~%uint8 preprogrammed_id~%~%================================================================================~%MSG: pal_device_msgs/LedEffectViaTopicParams~%#Topic name, must be of type pal_device_msgs/LedDataArray~%string topic_name~%~%================================================================================~%MSG: pal_device_msgs/LedDataArrayParams~%#Data of the effect, each element in the array represents a led, ~%#length should match device led count~%#For devices with no RGB option, just the alpha channel will be used~%std_msgs/ColorRGBA[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoTimedLedEffectGoal)))
  "Returns full string definition for message of type 'DoTimedLedEffectGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#uint16 because uint8 is char[] in Python~%uint32[] devices~%~%#Contains parameters for all led effects, but only the selected effect type parameters shall be provided~%LedEffectParams params~%#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever~%duration effectDuration~%~%#priority of the effect, 0 is no priority, 255 is max priority~%uint8 priority~%~%================================================================================~%MSG: pal_device_msgs/LedEffectParams~%uint8 FIXED_COLOR=0~%uint8 RAINBOW=1~%uint8 FADE=2~%uint8 BLINK=3~%uint8 PROGRESS=4~%uint8 FLOW=5~%uint8 PREPROGRAMMED_EFFECT=6~%uint8 EFFECT_VIA_TOPIC=7~%uint8 DATA_ARRAY=8~%~%uint8 effectType~%~%# RGBA of color, alpha will be used as intensity if supported by the led~%pal_device_msgs/LedFixedColorParams fixed_color~%pal_device_msgs/LedRainbowParams rainbow~%pal_device_msgs/LedFadeParams fade~%pal_device_msgs/LedBlinkParams blink~%pal_device_msgs/LedProgressParams progress~%pal_device_msgs/LedFlowParams flow~%#Below are device specific, avoid them if you can~%pal_device_msgs/LedPreProgrammedParams preprogrammed~%pal_device_msgs/LedEffectViaTopicParams effect_via_topic~%pal_device_msgs/LedDataArrayParams data_array~%~%================================================================================~%MSG: pal_device_msgs/LedFixedColorParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: pal_device_msgs/LedRainbowParams~%# Time to perform rainbow~%duration transition_duration~%~%================================================================================~%MSG: pal_device_msgs/LedFadeParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Duration of the transition from one color to the other~%duration transition_duration~%~%#Perform a fade when going from secondColor to firstColor~%bool reverse_fade~%~%~%================================================================================~%MSG: pal_device_msgs/LedBlinkParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%duration first_color_duration~%duration second_color_duration~%~%~%================================================================================~%MSG: pal_device_msgs/LedProgressParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Percentage of pixels painted with the first color~%float32 percentage~%#Offset to begin painting the first color~%float32 led_offset ~%~%~%================================================================================~%MSG: pal_device_msgs/LedFlowParams~%# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%# Percentage of pixels painted with the first color~%float32 percentage~%# Flow velocity~%float32 velocity~%~%~%================================================================================~%MSG: pal_device_msgs/LedPreProgrammedParams~%#Id of pre-programmed effect, most likely device specific~%uint8 preprogrammed_id~%~%================================================================================~%MSG: pal_device_msgs/LedEffectViaTopicParams~%#Topic name, must be of type pal_device_msgs/LedDataArray~%string topic_name~%~%================================================================================~%MSG: pal_device_msgs/LedDataArrayParams~%#Data of the effect, each element in the array represents a led, ~%#length should match device led count~%#For devices with no RGB option, just the alpha channel will be used~%std_msgs/ColorRGBA[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoTimedLedEffectGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'devices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'params))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoTimedLedEffectGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'DoTimedLedEffectGoal
    (cl:cons ':devices (devices msg))
    (cl:cons ':params (params msg))
    (cl:cons ':effectDuration (effectDuration msg))
    (cl:cons ':priority (priority msg))
))
