; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-msg)


;//! \htmlinclude FaceDetection.msg.html

(cl:defclass <FaceDetection> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (eyesLocated
    :reader eyesLocated
    :initarg :eyesLocated
    :type cl:boolean
    :initform cl:nil)
   (leftEyeX
    :reader leftEyeX
    :initarg :leftEyeX
    :type cl:integer
    :initform 0)
   (leftEyeY
    :reader leftEyeY
    :initarg :leftEyeY
    :type cl:integer
    :initform 0)
   (rightEyeX
    :reader rightEyeX
    :initarg :rightEyeX
    :type cl:integer
    :initform 0)
   (rightEyeY
    :reader rightEyeY
    :initarg :rightEyeY
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (gender
    :reader gender
    :initarg :gender
    :type cl:string
    :initform "")
   (genderConfidence
    :reader genderConfidence
    :initarg :genderConfidence
    :type cl:float
    :initform 0.0)
   (expression
    :reader expression
    :initarg :expression
    :type cl:string
    :initform "")
   (expression_confidence
    :reader expression_confidence
    :initarg :expression_confidence
    :type cl:float
    :initform 0.0)
   (emotion_anger_confidence
    :reader emotion_anger_confidence
    :initarg :emotion_anger_confidence
    :type cl:float
    :initform 0.0)
   (emotion_disgust_confidence
    :reader emotion_disgust_confidence
    :initarg :emotion_disgust_confidence
    :type cl:float
    :initform 0.0)
   (emotion_fear_confidence
    :reader emotion_fear_confidence
    :initarg :emotion_fear_confidence
    :type cl:float
    :initform 0.0)
   (emotion_happiness_confidence
    :reader emotion_happiness_confidence
    :initarg :emotion_happiness_confidence
    :type cl:float
    :initform 0.0)
   (emotion_neutral_confidence
    :reader emotion_neutral_confidence
    :initarg :emotion_neutral_confidence
    :type cl:float
    :initform 0.0)
   (emotion_sadness_confidence
    :reader emotion_sadness_confidence
    :initarg :emotion_sadness_confidence
    :type cl:float
    :initform 0.0)
   (emotion_surprise_confidence
    :reader emotion_surprise_confidence
    :initarg :emotion_surprise_confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass FaceDetection (<FaceDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-msg:<FaceDetection> is deprecated: use pal_detection_msgs-msg:FaceDetection instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:x-val is deprecated.  Use pal_detection_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:y-val is deprecated.  Use pal_detection_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:width-val is deprecated.  Use pal_detection_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:height-val is deprecated.  Use pal_detection_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'eyesLocated-val :lambda-list '(m))
(cl:defmethod eyesLocated-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:eyesLocated-val is deprecated.  Use pal_detection_msgs-msg:eyesLocated instead.")
  (eyesLocated m))

(cl:ensure-generic-function 'leftEyeX-val :lambda-list '(m))
(cl:defmethod leftEyeX-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:leftEyeX-val is deprecated.  Use pal_detection_msgs-msg:leftEyeX instead.")
  (leftEyeX m))

(cl:ensure-generic-function 'leftEyeY-val :lambda-list '(m))
(cl:defmethod leftEyeY-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:leftEyeY-val is deprecated.  Use pal_detection_msgs-msg:leftEyeY instead.")
  (leftEyeY m))

(cl:ensure-generic-function 'rightEyeX-val :lambda-list '(m))
(cl:defmethod rightEyeX-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:rightEyeX-val is deprecated.  Use pal_detection_msgs-msg:rightEyeX instead.")
  (rightEyeX m))

(cl:ensure-generic-function 'rightEyeY-val :lambda-list '(m))
(cl:defmethod rightEyeY-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:rightEyeY-val is deprecated.  Use pal_detection_msgs-msg:rightEyeY instead.")
  (rightEyeY m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:position-val is deprecated.  Use pal_detection_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:name-val is deprecated.  Use pal_detection_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:confidence-val is deprecated.  Use pal_detection_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'gender-val :lambda-list '(m))
(cl:defmethod gender-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:gender-val is deprecated.  Use pal_detection_msgs-msg:gender instead.")
  (gender m))

(cl:ensure-generic-function 'genderConfidence-val :lambda-list '(m))
(cl:defmethod genderConfidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:genderConfidence-val is deprecated.  Use pal_detection_msgs-msg:genderConfidence instead.")
  (genderConfidence m))

(cl:ensure-generic-function 'expression-val :lambda-list '(m))
(cl:defmethod expression-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:expression-val is deprecated.  Use pal_detection_msgs-msg:expression instead.")
  (expression m))

(cl:ensure-generic-function 'expression_confidence-val :lambda-list '(m))
(cl:defmethod expression_confidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:expression_confidence-val is deprecated.  Use pal_detection_msgs-msg:expression_confidence instead.")
  (expression_confidence m))

(cl:ensure-generic-function 'emotion_anger_confidence-val :lambda-list '(m))
(cl:defmethod emotion_anger_confidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:emotion_anger_confidence-val is deprecated.  Use pal_detection_msgs-msg:emotion_anger_confidence instead.")
  (emotion_anger_confidence m))

(cl:ensure-generic-function 'emotion_disgust_confidence-val :lambda-list '(m))
(cl:defmethod emotion_disgust_confidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:emotion_disgust_confidence-val is deprecated.  Use pal_detection_msgs-msg:emotion_disgust_confidence instead.")
  (emotion_disgust_confidence m))

(cl:ensure-generic-function 'emotion_fear_confidence-val :lambda-list '(m))
(cl:defmethod emotion_fear_confidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:emotion_fear_confidence-val is deprecated.  Use pal_detection_msgs-msg:emotion_fear_confidence instead.")
  (emotion_fear_confidence m))

(cl:ensure-generic-function 'emotion_happiness_confidence-val :lambda-list '(m))
(cl:defmethod emotion_happiness_confidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:emotion_happiness_confidence-val is deprecated.  Use pal_detection_msgs-msg:emotion_happiness_confidence instead.")
  (emotion_happiness_confidence m))

(cl:ensure-generic-function 'emotion_neutral_confidence-val :lambda-list '(m))
(cl:defmethod emotion_neutral_confidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:emotion_neutral_confidence-val is deprecated.  Use pal_detection_msgs-msg:emotion_neutral_confidence instead.")
  (emotion_neutral_confidence m))

(cl:ensure-generic-function 'emotion_sadness_confidence-val :lambda-list '(m))
(cl:defmethod emotion_sadness_confidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:emotion_sadness_confidence-val is deprecated.  Use pal_detection_msgs-msg:emotion_sadness_confidence instead.")
  (emotion_sadness_confidence m))

(cl:ensure-generic-function 'emotion_surprise_confidence-val :lambda-list '(m))
(cl:defmethod emotion_surprise_confidence-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:emotion_surprise_confidence-val is deprecated.  Use pal_detection_msgs-msg:emotion_surprise_confidence instead.")
  (emotion_surprise_confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FaceDetection>)))
    "Constants for message type '<FaceDetection>"
  '((:EXPRESSION_NEUTRAL . "\"neutral\"")
    (:EXPRESSION_SMILE . "\"smile\"")
    (:EXPRESSION_RAISED_BROWS . "\"raised brows\"")
    (:EXPRESSION_EYES_AWAY . "\"eyes away\"")
    (:EXPRESSION_SQUINTING . "\"squinting\"")
    (:EXPRESSION_FROWNING . "\"frowning\""))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FaceDetection)))
    "Constants for message type 'FaceDetection"
  '((:EXPRESSION_NEUTRAL . "\"neutral\"")
    (:EXPRESSION_SMILE . "\"smile\"")
    (:EXPRESSION_RAISED_BROWS . "\"raised brows\"")
    (:EXPRESSION_EYES_AWAY . "\"eyes away\"")
    (:EXPRESSION_SQUINTING . "\"squinting\"")
    (:EXPRESSION_FROWNING . "\"frowning\""))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetection>) ostream)
  "Serializes a message object of type '<FaceDetection>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'eyesLocated) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'leftEyeX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'leftEyeY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightEyeX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightEyeY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gender))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'genderConfidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'expression))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'expression))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'expression_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'emotion_anger_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'emotion_disgust_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'emotion_fear_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'emotion_happiness_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'emotion_neutral_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'emotion_sadness_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'emotion_surprise_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetection>) istream)
  "Deserializes a message object of type '<FaceDetection>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'eyesLocated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftEyeX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftEyeY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightEyeX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightEyeY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gender) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gender) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'genderConfidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'expression) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'expression) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'expression_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'emotion_anger_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'emotion_disgust_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'emotion_fear_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'emotion_happiness_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'emotion_neutral_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'emotion_sadness_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'emotion_surprise_confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetection>)))
  "Returns string type for a message object of type '<FaceDetection>"
  "pal_detection_msgs/FaceDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetection)))
  "Returns string type for a message object of type 'FaceDetection"
  "pal_detection_msgs/FaceDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetection>)))
  "Returns md5sum for a message object of type '<FaceDetection>"
  "6dcee331fa45e6aea891516390b9e96d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetection)))
  "Returns md5sum for a message object of type 'FaceDetection"
  "6dcee331fa45e6aea891516390b9e96d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetection>)))
  "Returns full string definition for message of type '<FaceDetection>"
  (cl:format cl:nil "~%##########################################~%#~%# Face detection data~%#~%##########################################~%~%#####################~%# Face bounding box~%#####################~%# coordinates of the top left corner of the box~%int32 x~%int32 y~%~%# width of the box~%int32 width~%~%# height of the box~%int32 height~%~%############################~%# Eyes position (if found)~%############################~%~%bool eyesLocated~%~%int32 leftEyeX~%int32 leftEyeY~%int32 rightEyeX~%int32 rightEyeY~%~%#############################~%# Centre of eyes 3D estimate~%#############################~%geometry_msgs/Point32 position~%~%~%############################~%# Person recognition~%############################~%~%string name~%float32 confidence~%~%############################~%# Gender recognition~%############################~%string gender~%float32 genderConfidence~%~%############################~%# Facial expression~%############################~%string EXPRESSION_NEUTRAL=\"neutral\"~%string EXPRESSION_SMILE=\"smile\"~%string EXPRESSION_RAISED_BROWS=\"raised brows\"~%string EXPRESSION_EYES_AWAY=\"eyes away\"~%string EXPRESSION_SQUINTING=\"squinting\"~%string EXPRESSION_FROWNING=\"frowning\"~%string expression~%float32 expression_confidence~%~%############################~%# Facial emotion~%############################~%float32 emotion_anger_confidence~%float32 emotion_disgust_confidence~%float32 emotion_fear_confidence~%float32 emotion_happiness_confidence~%float32 emotion_neutral_confidence~%float32 emotion_sadness_confidence~%float32 emotion_surprise_confidence~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetection)))
  "Returns full string definition for message of type 'FaceDetection"
  (cl:format cl:nil "~%##########################################~%#~%# Face detection data~%#~%##########################################~%~%#####################~%# Face bounding box~%#####################~%# coordinates of the top left corner of the box~%int32 x~%int32 y~%~%# width of the box~%int32 width~%~%# height of the box~%int32 height~%~%############################~%# Eyes position (if found)~%############################~%~%bool eyesLocated~%~%int32 leftEyeX~%int32 leftEyeY~%int32 rightEyeX~%int32 rightEyeY~%~%#############################~%# Centre of eyes 3D estimate~%#############################~%geometry_msgs/Point32 position~%~%~%############################~%# Person recognition~%############################~%~%string name~%float32 confidence~%~%############################~%# Gender recognition~%############################~%string gender~%float32 genderConfidence~%~%############################~%# Facial expression~%############################~%string EXPRESSION_NEUTRAL=\"neutral\"~%string EXPRESSION_SMILE=\"smile\"~%string EXPRESSION_RAISED_BROWS=\"raised brows\"~%string EXPRESSION_EYES_AWAY=\"eyes away\"~%string EXPRESSION_SQUINTING=\"squinting\"~%string EXPRESSION_FROWNING=\"frowning\"~%string expression~%float32 expression_confidence~%~%############################~%# Facial emotion~%############################~%float32 emotion_anger_confidence~%float32 emotion_disgust_confidence~%float32 emotion_fear_confidence~%float32 emotion_happiness_confidence~%float32 emotion_neutral_confidence~%float32 emotion_sadness_confidence~%float32 emotion_surprise_confidence~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetection>))
  (cl:+ 0
     4
     4
     4
     4
     1
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4 (cl:length (cl:slot-value msg 'name))
     4
     4 (cl:length (cl:slot-value msg 'gender))
     4
     4 (cl:length (cl:slot-value msg 'expression))
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetection
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':eyesLocated (eyesLocated msg))
    (cl:cons ':leftEyeX (leftEyeX msg))
    (cl:cons ':leftEyeY (leftEyeY msg))
    (cl:cons ':rightEyeX (rightEyeX msg))
    (cl:cons ':rightEyeY (rightEyeY msg))
    (cl:cons ':position (position msg))
    (cl:cons ':name (name msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':gender (gender msg))
    (cl:cons ':genderConfidence (genderConfidence msg))
    (cl:cons ':expression (expression msg))
    (cl:cons ':expression_confidence (expression_confidence msg))
    (cl:cons ':emotion_anger_confidence (emotion_anger_confidence msg))
    (cl:cons ':emotion_disgust_confidence (emotion_disgust_confidence msg))
    (cl:cons ':emotion_fear_confidence (emotion_fear_confidence msg))
    (cl:cons ':emotion_happiness_confidence (emotion_happiness_confidence msg))
    (cl:cons ':emotion_neutral_confidence (emotion_neutral_confidence msg))
    (cl:cons ':emotion_sadness_confidence (emotion_sadness_confidence msg))
    (cl:cons ':emotion_surprise_confidence (emotion_surprise_confidence msg))
))
