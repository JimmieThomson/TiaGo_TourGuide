; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude SafetyZone-request.msg.html

(cl:defclass <SafetyZone-request> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (leftAngleRad
    :reader leftAngleRad
    :initarg :leftAngleRad
    :type cl:float
    :initform 0.0)
   (rightAngleRad
    :reader rightAngleRad
    :initarg :rightAngleRad
    :type cl:float
    :initform 0.0)
   (sensorMask
    :reader sensorMask
    :initarg :sensorMask
    :type cl:integer
    :initform 0))
)

(cl:defclass SafetyZone-request (<SafetyZone-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyZone-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyZone-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<SafetyZone-request> is deprecated: use pal_navigation_msgs-srv:SafetyZone-request instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <SafetyZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:distance-val is deprecated.  Use pal_navigation_msgs-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'leftAngleRad-val :lambda-list '(m))
(cl:defmethod leftAngleRad-val ((m <SafetyZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:leftAngleRad-val is deprecated.  Use pal_navigation_msgs-srv:leftAngleRad instead.")
  (leftAngleRad m))

(cl:ensure-generic-function 'rightAngleRad-val :lambda-list '(m))
(cl:defmethod rightAngleRad-val ((m <SafetyZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:rightAngleRad-val is deprecated.  Use pal_navigation_msgs-srv:rightAngleRad instead.")
  (rightAngleRad m))

(cl:ensure-generic-function 'sensorMask-val :lambda-list '(m))
(cl:defmethod sensorMask-val ((m <SafetyZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:sensorMask-val is deprecated.  Use pal_navigation_msgs-srv:sensorMask instead.")
  (sensorMask m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SafetyZone-request>)))
    "Constants for message type '<SafetyZone-request>"
  '((:NO_SENSORS . 0)
    (:ALL_SENSORS . 127)
    (:FRONT_SONARS . 1)
    (:LEFT_SONARS . 2)
    (:RIGHT_SONARS . 4)
    (:BACK_SONARS . 8)
    (:TORSO_SONARS . 16)
    (:ONLY_SONARS . 31)
    (:BASE_LASER . 32)
    (:TORSO_LASER . 64)
    (:ONLY_LASERS . 96))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SafetyZone-request)))
    "Constants for message type 'SafetyZone-request"
  '((:NO_SENSORS . 0)
    (:ALL_SENSORS . 127)
    (:FRONT_SONARS . 1)
    (:LEFT_SONARS . 2)
    (:RIGHT_SONARS . 4)
    (:BACK_SONARS . 8)
    (:TORSO_SONARS . 16)
    (:ONLY_SONARS . 31)
    (:BASE_LASER . 32)
    (:TORSO_LASER . 64)
    (:ONLY_LASERS . 96))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyZone-request>) ostream)
  "Serializes a message object of type '<SafetyZone-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftAngleRad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightAngleRad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensorMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensorMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensorMask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyZone-request>) istream)
  "Deserializes a message object of type '<SafetyZone-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftAngleRad) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightAngleRad) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensorMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensorMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensorMask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyZone-request>)))
  "Returns string type for a service object of type '<SafetyZone-request>"
  "pal_navigation_msgs/SafetyZoneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyZone-request)))
  "Returns string type for a service object of type 'SafetyZone-request"
  "pal_navigation_msgs/SafetyZoneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyZone-request>)))
  "Returns md5sum for a message object of type '<SafetyZone-request>"
  "19f798f566629d71a0a37495aba033fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyZone-request)))
  "Returns md5sum for a message object of type 'SafetyZone-request"
  "19f798f566629d71a0a37495aba033fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyZone-request>)))
  "Returns full string definition for message of type '<SafetyZone-request>"
  (cl:format cl:nil "#Binary sensor mask o select sensors used to check safety_zone~%byte NO_SENSORS = 0~%byte ALL_SENSORS = 127 ~%#sonar sensors~%byte FRONT_SONARS = 1~%byte LEFT_SONARS = 2~%byte RIGHT_SONARS = 4~%byte BACK_SONARS = 8~%byte TORSO_SONARS = 16~%byte ONLY_SONARS = 31~%#lasers~%byte BASE_LASER = 32~%byte TORSO_LASER = 64~%byte ONLY_LASERS = 96~%~%# Request Safety Zone~%~%# Distance to take into account for obstacle detection~%float64 distance~%~%# Angles that specify the zone to check for safety~%float64 leftAngleRad~%float64 rightAngleRad~%~%uint32 sensorMask~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyZone-request)))
  "Returns full string definition for message of type 'SafetyZone-request"
  (cl:format cl:nil "#Binary sensor mask o select sensors used to check safety_zone~%byte NO_SENSORS = 0~%byte ALL_SENSORS = 127 ~%#sonar sensors~%byte FRONT_SONARS = 1~%byte LEFT_SONARS = 2~%byte RIGHT_SONARS = 4~%byte BACK_SONARS = 8~%byte TORSO_SONARS = 16~%byte ONLY_SONARS = 31~%#lasers~%byte BASE_LASER = 32~%byte TORSO_LASER = 64~%byte ONLY_LASERS = 96~%~%# Request Safety Zone~%~%# Distance to take into account for obstacle detection~%float64 distance~%~%# Angles that specify the zone to check for safety~%float64 leftAngleRad~%float64 rightAngleRad~%~%uint32 sensorMask~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyZone-request>))
  (cl:+ 0
     8
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyZone-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyZone-request
    (cl:cons ':distance (distance msg))
    (cl:cons ':leftAngleRad (leftAngleRad msg))
    (cl:cons ':rightAngleRad (rightAngleRad msg))
    (cl:cons ':sensorMask (sensorMask msg))
))
;//! \htmlinclude SafetyZone-response.msg.html

(cl:defclass <SafetyZone-response> (roslisp-msg-protocol:ros-message)
  ((leftSafe
    :reader leftSafe
    :initarg :leftSafe
    :type cl:boolean
    :initform cl:nil)
   (leftMinDist
    :reader leftMinDist
    :initarg :leftMinDist
    :type cl:float
    :initform 0.0)
   (leftMinDistAngleRad
    :reader leftMinDistAngleRad
    :initarg :leftMinDistAngleRad
    :type cl:float
    :initform 0.0)
   (rightSafe
    :reader rightSafe
    :initarg :rightSafe
    :type cl:boolean
    :initform cl:nil)
   (rightMinDist
    :reader rightMinDist
    :initarg :rightMinDist
    :type cl:float
    :initform 0.0)
   (rightMinDistAngleRad
    :reader rightMinDistAngleRad
    :initarg :rightMinDistAngleRad
    :type cl:float
    :initform 0.0))
)

(cl:defclass SafetyZone-response (<SafetyZone-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyZone-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyZone-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<SafetyZone-response> is deprecated: use pal_navigation_msgs-srv:SafetyZone-response instead.")))

(cl:ensure-generic-function 'leftSafe-val :lambda-list '(m))
(cl:defmethod leftSafe-val ((m <SafetyZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:leftSafe-val is deprecated.  Use pal_navigation_msgs-srv:leftSafe instead.")
  (leftSafe m))

(cl:ensure-generic-function 'leftMinDist-val :lambda-list '(m))
(cl:defmethod leftMinDist-val ((m <SafetyZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:leftMinDist-val is deprecated.  Use pal_navigation_msgs-srv:leftMinDist instead.")
  (leftMinDist m))

(cl:ensure-generic-function 'leftMinDistAngleRad-val :lambda-list '(m))
(cl:defmethod leftMinDistAngleRad-val ((m <SafetyZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:leftMinDistAngleRad-val is deprecated.  Use pal_navigation_msgs-srv:leftMinDistAngleRad instead.")
  (leftMinDistAngleRad m))

(cl:ensure-generic-function 'rightSafe-val :lambda-list '(m))
(cl:defmethod rightSafe-val ((m <SafetyZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:rightSafe-val is deprecated.  Use pal_navigation_msgs-srv:rightSafe instead.")
  (rightSafe m))

(cl:ensure-generic-function 'rightMinDist-val :lambda-list '(m))
(cl:defmethod rightMinDist-val ((m <SafetyZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:rightMinDist-val is deprecated.  Use pal_navigation_msgs-srv:rightMinDist instead.")
  (rightMinDist m))

(cl:ensure-generic-function 'rightMinDistAngleRad-val :lambda-list '(m))
(cl:defmethod rightMinDistAngleRad-val ((m <SafetyZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:rightMinDistAngleRad-val is deprecated.  Use pal_navigation_msgs-srv:rightMinDistAngleRad instead.")
  (rightMinDistAngleRad m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyZone-response>) ostream)
  "Serializes a message object of type '<SafetyZone-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'leftSafe) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftMinDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftMinDistAngleRad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rightSafe) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightMinDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightMinDistAngleRad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyZone-response>) istream)
  "Deserializes a message object of type '<SafetyZone-response>"
    (cl:setf (cl:slot-value msg 'leftSafe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftMinDist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftMinDistAngleRad) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rightSafe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightMinDist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightMinDistAngleRad) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyZone-response>)))
  "Returns string type for a service object of type '<SafetyZone-response>"
  "pal_navigation_msgs/SafetyZoneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyZone-response)))
  "Returns string type for a service object of type 'SafetyZone-response"
  "pal_navigation_msgs/SafetyZoneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyZone-response>)))
  "Returns md5sum for a message object of type '<SafetyZone-response>"
  "19f798f566629d71a0a37495aba033fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyZone-response)))
  "Returns md5sum for a message object of type 'SafetyZone-response"
  "19f798f566629d71a0a37495aba033fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyZone-response>)))
  "Returns full string definition for message of type '<SafetyZone-response>"
  (cl:format cl:nil "~%#True if the specified side is safe, false otherwise. ~%#It returns the min distance and at which angle has been measured for each side.~%~%bool leftSafe~%float64 leftMinDist~%float64 leftMinDistAngleRad~%~%bool rightSafe ~%float64 rightMinDist~%float64 rightMinDistAngleRad~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyZone-response)))
  "Returns full string definition for message of type 'SafetyZone-response"
  (cl:format cl:nil "~%#True if the specified side is safe, false otherwise. ~%#It returns the min distance and at which angle has been measured for each side.~%~%bool leftSafe~%float64 leftMinDist~%float64 leftMinDistAngleRad~%~%bool rightSafe ~%float64 rightMinDist~%float64 rightMinDistAngleRad~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyZone-response>))
  (cl:+ 0
     1
     8
     8
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyZone-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyZone-response
    (cl:cons ':leftSafe (leftSafe msg))
    (cl:cons ':leftMinDist (leftMinDist msg))
    (cl:cons ':leftMinDistAngleRad (leftMinDistAngleRad msg))
    (cl:cons ':rightSafe (rightSafe msg))
    (cl:cons ':rightMinDist (rightMinDist msg))
    (cl:cons ':rightMinDistAngleRad (rightMinDistAngleRad msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SafetyZone)))
  'SafetyZone-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SafetyZone)))
  'SafetyZone-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyZone)))
  "Returns string type for a service object of type '<SafetyZone>"
  "pal_navigation_msgs/SafetyZone")