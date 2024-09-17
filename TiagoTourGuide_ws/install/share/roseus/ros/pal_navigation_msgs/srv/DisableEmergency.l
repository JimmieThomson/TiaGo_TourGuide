;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::DisableEmergency)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'DisableEmergency (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::DISABLEEMERGENCY")
  (make-package "PAL_NAVIGATION_MSGS::DISABLEEMERGENCY"))
(unless (find-package "PAL_NAVIGATION_MSGS::DISABLEEMERGENCYREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::DISABLEEMERGENCYREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::DISABLEEMERGENCYRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::DISABLEEMERGENCYRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::DisableEmergencyRequest
  :super ros::object
  :slots (_second _useLEDs ))

(defmethod pal_navigation_msgs::DisableEmergencyRequest
  (:init
   (&key
    ((:second __second) 0.0)
    ((:useLEDs __useLEDs) nil)
    )
   (send-super :init)
   (setq _second (float __second))
   (setq _useLEDs __useLEDs)
   self)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:useLEDs
   (&optional (__useLEDs :null))
   (if (not (eq __useLEDs :null)) (setq _useLEDs __useLEDs)) _useLEDs)
  (:serialization-length
   ()
   (+
    ;; float64 _second
    8
    ;; bool _useLEDs
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _second
       (sys::poke _second (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _useLEDs
       (if _useLEDs (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _second
     (setq _second (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _useLEDs
     (setq _useLEDs (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_navigation_msgs::DisableEmergencyResponse
  :super ros::object
  :slots (_success ))

(defmethod pal_navigation_msgs::DisableEmergencyResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_navigation_msgs::DisableEmergency
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::DisableEmergency :md5sum-) "c70010f49615fec47be4f92cf8bc5f87")
(setf (get pal_navigation_msgs::DisableEmergency :datatype-) "pal_navigation_msgs/DisableEmergency")
(setf (get pal_navigation_msgs::DisableEmergency :request) pal_navigation_msgs::DisableEmergencyRequest)
(setf (get pal_navigation_msgs::DisableEmergency :response) pal_navigation_msgs::DisableEmergencyResponse)

(defmethod pal_navigation_msgs::DisableEmergencyRequest
  (:response () (instance pal_navigation_msgs::DisableEmergencyResponse :init)))

(setf (get pal_navigation_msgs::DisableEmergencyRequest :md5sum-) "c70010f49615fec47be4f92cf8bc5f87")
(setf (get pal_navigation_msgs::DisableEmergencyRequest :datatype-) "pal_navigation_msgs/DisableEmergencyRequest")
(setf (get pal_navigation_msgs::DisableEmergencyRequest :definition-)
      "# Disable emergency 
float64 second
bool useLEDs
---
bool success

")

(setf (get pal_navigation_msgs::DisableEmergencyResponse :md5sum-) "c70010f49615fec47be4f92cf8bc5f87")
(setf (get pal_navigation_msgs::DisableEmergencyResponse :datatype-) "pal_navigation_msgs/DisableEmergencyResponse")
(setf (get pal_navigation_msgs::DisableEmergencyResponse :definition-)
      "# Disable emergency 
float64 second
bool useLEDs
---
bool success

")



(provide :pal_navigation_msgs/DisableEmergency "c70010f49615fec47be4f92cf8bc5f87")


