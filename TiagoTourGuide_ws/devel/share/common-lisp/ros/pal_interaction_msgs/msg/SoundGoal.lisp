; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude SoundGoal.msg.html

(cl:defclass <SoundGoal> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (lang_id
    :reader lang_id
    :initarg :lang_id
    :type cl:string
    :initform "")
   (wait_before_speaking
    :reader wait_before_speaking
    :initarg :wait_before_speaking
    :type cl:real
    :initform 0))
)

(cl:defclass SoundGoal (<SoundGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<SoundGoal> is deprecated: use pal_interaction_msgs-msg:SoundGoal instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <SoundGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:text-val is deprecated.  Use pal_interaction_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'lang_id-val :lambda-list '(m))
(cl:defmethod lang_id-val ((m <SoundGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:lang_id-val is deprecated.  Use pal_interaction_msgs-msg:lang_id instead.")
  (lang_id m))

(cl:ensure-generic-function 'wait_before_speaking-val :lambda-list '(m))
(cl:defmethod wait_before_speaking-val ((m <SoundGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:wait_before_speaking-val is deprecated.  Use pal_interaction_msgs-msg:wait_before_speaking instead.")
  (wait_before_speaking m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundGoal>) ostream)
  "Serializes a message object of type '<SoundGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lang_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lang_id))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'wait_before_speaking)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'wait_before_speaking) (cl:floor (cl:slot-value msg 'wait_before_speaking)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundGoal>) istream)
  "Deserializes a message object of type '<SoundGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lang_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lang_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wait_before_speaking) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundGoal>)))
  "Returns string type for a message object of type '<SoundGoal>"
  "pal_interaction_msgs/SoundGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundGoal)))
  "Returns string type for a message object of type 'SoundGoal"
  "pal_interaction_msgs/SoundGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundGoal>)))
  "Returns md5sum for a message object of type '<SoundGoal>"
  "a885e729fbf7cd3a957b93630532e7bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundGoal)))
  "Returns md5sum for a message object of type 'SoundGoal"
  "a885e729fbf7cd3a957b93630532e7bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundGoal>)))
  "Returns full string definition for message of type '<SoundGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## .................~%## DEPRECATED~%## Please do not use this action as will be removed in the future.~%## i18ntext.action together with pal_tts_cfg pkg is recomended instead.~%## ---------------------------------------------------------------------~% ~%## goal definition~%# Text to be spoken~%string text~%# Language of the given text in~%# variable text.~%# If empty the system will try to speak it in ~%# the current system language that can be changed~%# in wReemCommmander.~%string lang_id~%# Time to wait before starting to say the ~%# given text. Default is zero.~%duration wait_before_speaking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundGoal)))
  "Returns full string definition for message of type 'SoundGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## .................~%## DEPRECATED~%## Please do not use this action as will be removed in the future.~%## i18ntext.action together with pal_tts_cfg pkg is recomended instead.~%## ---------------------------------------------------------------------~% ~%## goal definition~%# Text to be spoken~%string text~%# Language of the given text in~%# variable text.~%# If empty the system will try to speak it in ~%# the current system language that can be changed~%# in wReemCommmander.~%string lang_id~%# Time to wait before starting to say the ~%# given text. Default is zero.~%duration wait_before_speaking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     4 (cl:length (cl:slot-value msg 'lang_id))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundGoal
    (cl:cons ':text (text msg))
    (cl:cons ':lang_id (lang_id msg))
    (cl:cons ':wait_before_speaking (wait_before_speaking msg))
))
