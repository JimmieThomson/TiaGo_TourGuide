;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::SafetyZone)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'SafetyZone (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::SAFETYZONE")
  (make-package "PAL_NAVIGATION_MSGS::SAFETYZONE"))
(unless (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::SAFETYZONERESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::SAFETYZONERESPONSE"))

(in-package "ROS")





(intern "*NO_SENSORS*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*NO_SENSORS* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*NO_SENSORS* 0)
(intern "*ALL_SENSORS*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*ALL_SENSORS* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*ALL_SENSORS* 127)
(intern "*FRONT_SONARS*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*FRONT_SONARS* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*FRONT_SONARS* 1)
(intern "*LEFT_SONARS*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*LEFT_SONARS* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*LEFT_SONARS* 2)
(intern "*RIGHT_SONARS*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*RIGHT_SONARS* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*RIGHT_SONARS* 4)
(intern "*BACK_SONARS*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*BACK_SONARS* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*BACK_SONARS* 8)
(intern "*TORSO_SONARS*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*TORSO_SONARS* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*TORSO_SONARS* 16)
(intern "*ONLY_SONARS*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*ONLY_SONARS* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*ONLY_SONARS* 31)
(intern "*BASE_LASER*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*BASE_LASER* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*BASE_LASER* 32)
(intern "*TORSO_LASER*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*TORSO_LASER* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*TORSO_LASER* 64)
(intern "*ONLY_LASERS*" (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(shadow '*ONLY_LASERS* (find-package "PAL_NAVIGATION_MSGS::SAFETYZONEREQUEST"))
(defconstant pal_navigation_msgs::SafetyZoneRequest::*ONLY_LASERS* 96)

(defun pal_navigation_msgs::SafetyZoneRequest-to-symbol (const)
  (cond
        ((= const 0) 'pal_navigation_msgs::SafetyZoneRequest::*NO_SENSORS*)
        ((= const 127) 'pal_navigation_msgs::SafetyZoneRequest::*ALL_SENSORS*)
        ((= const 1) 'pal_navigation_msgs::SafetyZoneRequest::*FRONT_SONARS*)
        ((= const 2) 'pal_navigation_msgs::SafetyZoneRequest::*LEFT_SONARS*)
        ((= const 4) 'pal_navigation_msgs::SafetyZoneRequest::*RIGHT_SONARS*)
        ((= const 8) 'pal_navigation_msgs::SafetyZoneRequest::*BACK_SONARS*)
        ((= const 16) 'pal_navigation_msgs::SafetyZoneRequest::*TORSO_SONARS*)
        ((= const 31) 'pal_navigation_msgs::SafetyZoneRequest::*ONLY_SONARS*)
        ((= const 32) 'pal_navigation_msgs::SafetyZoneRequest::*BASE_LASER*)
        ((= const 64) 'pal_navigation_msgs::SafetyZoneRequest::*TORSO_LASER*)
        ((= const 96) 'pal_navigation_msgs::SafetyZoneRequest::*ONLY_LASERS*)
        (t nil)))

(defclass pal_navigation_msgs::SafetyZoneRequest
  :super ros::object
  :slots (_distance _leftAngleRad _rightAngleRad _sensorMask ))

(defmethod pal_navigation_msgs::SafetyZoneRequest
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:leftAngleRad __leftAngleRad) 0.0)
    ((:rightAngleRad __rightAngleRad) 0.0)
    ((:sensorMask __sensorMask) 0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _leftAngleRad (float __leftAngleRad))
   (setq _rightAngleRad (float __rightAngleRad))
   (setq _sensorMask (round __sensorMask))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:leftAngleRad
   (&optional __leftAngleRad)
   (if __leftAngleRad (setq _leftAngleRad __leftAngleRad)) _leftAngleRad)
  (:rightAngleRad
   (&optional __rightAngleRad)
   (if __rightAngleRad (setq _rightAngleRad __rightAngleRad)) _rightAngleRad)
  (:sensorMask
   (&optional __sensorMask)
   (if __sensorMask (setq _sensorMask __sensorMask)) _sensorMask)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; float64 _leftAngleRad
    8
    ;; float64 _rightAngleRad
    8
    ;; uint32 _sensorMask
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftAngleRad
       (sys::poke _leftAngleRad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightAngleRad
       (sys::poke _rightAngleRad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _sensorMask
       (write-long _sensorMask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftAngleRad
     (setq _leftAngleRad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightAngleRad
     (setq _rightAngleRad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _sensorMask
     (setq _sensorMask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pal_navigation_msgs::SafetyZoneResponse
  :super ros::object
  :slots (_leftSafe _leftMinDist _leftMinDistAngleRad _rightSafe _rightMinDist _rightMinDistAngleRad ))

(defmethod pal_navigation_msgs::SafetyZoneResponse
  (:init
   (&key
    ((:leftSafe __leftSafe) nil)
    ((:leftMinDist __leftMinDist) 0.0)
    ((:leftMinDistAngleRad __leftMinDistAngleRad) 0.0)
    ((:rightSafe __rightSafe) nil)
    ((:rightMinDist __rightMinDist) 0.0)
    ((:rightMinDistAngleRad __rightMinDistAngleRad) 0.0)
    )
   (send-super :init)
   (setq _leftSafe __leftSafe)
   (setq _leftMinDist (float __leftMinDist))
   (setq _leftMinDistAngleRad (float __leftMinDistAngleRad))
   (setq _rightSafe __rightSafe)
   (setq _rightMinDist (float __rightMinDist))
   (setq _rightMinDistAngleRad (float __rightMinDistAngleRad))
   self)
  (:leftSafe
   (&optional (__leftSafe :null))
   (if (not (eq __leftSafe :null)) (setq _leftSafe __leftSafe)) _leftSafe)
  (:leftMinDist
   (&optional __leftMinDist)
   (if __leftMinDist (setq _leftMinDist __leftMinDist)) _leftMinDist)
  (:leftMinDistAngleRad
   (&optional __leftMinDistAngleRad)
   (if __leftMinDistAngleRad (setq _leftMinDistAngleRad __leftMinDistAngleRad)) _leftMinDistAngleRad)
  (:rightSafe
   (&optional (__rightSafe :null))
   (if (not (eq __rightSafe :null)) (setq _rightSafe __rightSafe)) _rightSafe)
  (:rightMinDist
   (&optional __rightMinDist)
   (if __rightMinDist (setq _rightMinDist __rightMinDist)) _rightMinDist)
  (:rightMinDistAngleRad
   (&optional __rightMinDistAngleRad)
   (if __rightMinDistAngleRad (setq _rightMinDistAngleRad __rightMinDistAngleRad)) _rightMinDistAngleRad)
  (:serialization-length
   ()
   (+
    ;; bool _leftSafe
    1
    ;; float64 _leftMinDist
    8
    ;; float64 _leftMinDistAngleRad
    8
    ;; bool _rightSafe
    1
    ;; float64 _rightMinDist
    8
    ;; float64 _rightMinDistAngleRad
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _leftSafe
       (if _leftSafe (write-byte -1 s) (write-byte 0 s))
     ;; float64 _leftMinDist
       (sys::poke _leftMinDist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftMinDistAngleRad
       (sys::poke _leftMinDistAngleRad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _rightSafe
       (if _rightSafe (write-byte -1 s) (write-byte 0 s))
     ;; float64 _rightMinDist
       (sys::poke _rightMinDist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightMinDistAngleRad
       (sys::poke _rightMinDistAngleRad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _leftSafe
     (setq _leftSafe (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _leftMinDist
     (setq _leftMinDist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftMinDistAngleRad
     (setq _leftMinDistAngleRad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _rightSafe
     (setq _rightSafe (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _rightMinDist
     (setq _rightMinDist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightMinDistAngleRad
     (setq _rightMinDistAngleRad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pal_navigation_msgs::SafetyZone
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::SafetyZone :md5sum-) "19f798f566629d71a0a37495aba033fe")
(setf (get pal_navigation_msgs::SafetyZone :datatype-) "pal_navigation_msgs/SafetyZone")
(setf (get pal_navigation_msgs::SafetyZone :request) pal_navigation_msgs::SafetyZoneRequest)
(setf (get pal_navigation_msgs::SafetyZone :response) pal_navigation_msgs::SafetyZoneResponse)

(defmethod pal_navigation_msgs::SafetyZoneRequest
  (:response () (instance pal_navigation_msgs::SafetyZoneResponse :init)))

(setf (get pal_navigation_msgs::SafetyZoneRequest :md5sum-) "19f798f566629d71a0a37495aba033fe")
(setf (get pal_navigation_msgs::SafetyZoneRequest :datatype-) "pal_navigation_msgs/SafetyZoneRequest")
(setf (get pal_navigation_msgs::SafetyZoneRequest :definition-)
      "#Binary sensor mask o select sensors used to check safety_zone
byte NO_SENSORS = 0
byte ALL_SENSORS = 127 
#sonar sensors
byte FRONT_SONARS = 1
byte LEFT_SONARS = 2
byte RIGHT_SONARS = 4
byte BACK_SONARS = 8
byte TORSO_SONARS = 16
byte ONLY_SONARS = 31
#lasers
byte BASE_LASER = 32
byte TORSO_LASER = 64
byte ONLY_LASERS = 96

# Request Safety Zone

# Distance to take into account for obstacle detection
float64 distance

# Angles that specify the zone to check for safety
float64 leftAngleRad
float64 rightAngleRad

uint32 sensorMask

---

#True if the specified side is safe, false otherwise. 
#It returns the min distance and at which angle has been measured for each side.

bool leftSafe
float64 leftMinDist
float64 leftMinDistAngleRad

bool rightSafe 
float64 rightMinDist
float64 rightMinDistAngleRad

")

(setf (get pal_navigation_msgs::SafetyZoneResponse :md5sum-) "19f798f566629d71a0a37495aba033fe")
(setf (get pal_navigation_msgs::SafetyZoneResponse :datatype-) "pal_navigation_msgs/SafetyZoneResponse")
(setf (get pal_navigation_msgs::SafetyZoneResponse :definition-)
      "#Binary sensor mask o select sensors used to check safety_zone
byte NO_SENSORS = 0
byte ALL_SENSORS = 127 
#sonar sensors
byte FRONT_SONARS = 1
byte LEFT_SONARS = 2
byte RIGHT_SONARS = 4
byte BACK_SONARS = 8
byte TORSO_SONARS = 16
byte ONLY_SONARS = 31
#lasers
byte BASE_LASER = 32
byte TORSO_LASER = 64
byte ONLY_LASERS = 96

# Request Safety Zone

# Distance to take into account for obstacle detection
float64 distance

# Angles that specify the zone to check for safety
float64 leftAngleRad
float64 rightAngleRad

uint32 sensorMask

---

#True if the specified side is safe, false otherwise. 
#It returns the min distance and at which angle has been measured for each side.

bool leftSafe
float64 leftMinDist
float64 leftMinDistAngleRad

bool rightSafe 
float64 rightMinDist
float64 rightMinDistAngleRad

")



(provide :pal_navigation_msgs/SafetyZone "19f798f566629d71a0a37495aba033fe")


