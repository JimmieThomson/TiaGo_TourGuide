;; Auto-generated. Do not edit!


(when (boundp 'pal_control_msgs::CurrentLimit)
  (if (not (find-package "PAL_CONTROL_MSGS"))
    (make-package "PAL_CONTROL_MSGS"))
  (shadow 'CurrentLimit (find-package "PAL_CONTROL_MSGS")))
(unless (find-package "PAL_CONTROL_MSGS::CURRENTLIMIT")
  (make-package "PAL_CONTROL_MSGS::CURRENTLIMIT"))
(unless (find-package "PAL_CONTROL_MSGS::CURRENTLIMITREQUEST")
  (make-package "PAL_CONTROL_MSGS::CURRENTLIMITREQUEST"))
(unless (find-package "PAL_CONTROL_MSGS::CURRENTLIMITRESPONSE")
  (make-package "PAL_CONTROL_MSGS::CURRENTLIMITRESPONSE"))

(in-package "ROS")





(defclass pal_control_msgs::CurrentLimitRequest
  :super ros::object
  :slots (_actuator_name _current_limit ))

(defmethod pal_control_msgs::CurrentLimitRequest
  (:init
   (&key
    ((:actuator_name __actuator_name) "")
    ((:current_limit __current_limit) 0.0)
    )
   (send-super :init)
   (setq _actuator_name (string __actuator_name))
   (setq _current_limit (float __current_limit))
   self)
  (:actuator_name
   (&optional __actuator_name)
   (if __actuator_name (setq _actuator_name __actuator_name)) _actuator_name)
  (:current_limit
   (&optional __current_limit)
   (if __current_limit (setq _current_limit __current_limit)) _current_limit)
  (:serialization-length
   ()
   (+
    ;; string _actuator_name
    4 (length _actuator_name)
    ;; float64 _current_limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _actuator_name
       (write-long (length _actuator_name) s) (princ _actuator_name s)
     ;; float64 _current_limit
       (sys::poke _current_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _actuator_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _actuator_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _current_limit
     (setq _current_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pal_control_msgs::CurrentLimitResponse
  :super ros::object
  :slots (_status ))

(defmethod pal_control_msgs::CurrentLimitResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_control_msgs::CurrentLimit
  :super ros::object
  :slots ())

(setf (get pal_control_msgs::CurrentLimit :md5sum-) "8a87b11fb09397e3869b9fb3a4ea940b")
(setf (get pal_control_msgs::CurrentLimit :datatype-) "pal_control_msgs/CurrentLimit")
(setf (get pal_control_msgs::CurrentLimit :request) pal_control_msgs::CurrentLimitRequest)
(setf (get pal_control_msgs::CurrentLimit :response) pal_control_msgs::CurrentLimitResponse)

(defmethod pal_control_msgs::CurrentLimitRequest
  (:response () (instance pal_control_msgs::CurrentLimitResponse :init)))

(setf (get pal_control_msgs::CurrentLimitRequest :md5sum-) "8a87b11fb09397e3869b9fb3a4ea940b")
(setf (get pal_control_msgs::CurrentLimitRequest :datatype-) "pal_control_msgs/CurrentLimitRequest")
(setf (get pal_control_msgs::CurrentLimitRequest :definition-)
      "#This service requests to change the current limit of a motor 
# to a new value. 
# Admissible values are between 0 (zero current)  and 1 (nominal current).

string    actuator_name
float64   current_limit

---

string   status

")

(setf (get pal_control_msgs::CurrentLimitResponse :md5sum-) "8a87b11fb09397e3869b9fb3a4ea940b")
(setf (get pal_control_msgs::CurrentLimitResponse :datatype-) "pal_control_msgs/CurrentLimitResponse")
(setf (get pal_control_msgs::CurrentLimitResponse :definition-)
      "#This service requests to change the current limit of a motor 
# to a new value. 
# Admissible values are between 0 (zero current)  and 1 (nominal current).

string    actuator_name
float64   current_limit

---

string   status

")



(provide :pal_control_msgs/CurrentLimit "8a87b11fb09397e3869b9fb3a4ea940b")


