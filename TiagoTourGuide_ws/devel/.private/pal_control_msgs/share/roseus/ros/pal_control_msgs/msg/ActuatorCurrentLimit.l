;; Auto-generated. Do not edit!


(when (boundp 'pal_control_msgs::ActuatorCurrentLimit)
  (if (not (find-package "PAL_CONTROL_MSGS"))
    (make-package "PAL_CONTROL_MSGS"))
  (shadow 'ActuatorCurrentLimit (find-package "PAL_CONTROL_MSGS")))
(unless (find-package "PAL_CONTROL_MSGS::ACTUATORCURRENTLIMIT")
  (make-package "PAL_CONTROL_MSGS::ACTUATORCURRENTLIMIT"))

(in-package "ROS")
;;//! \htmlinclude ActuatorCurrentLimit.msg.html


(defclass pal_control_msgs::ActuatorCurrentLimit
  :super ros::object
  :slots (_actuator_names _current_limits ))

(defmethod pal_control_msgs::ActuatorCurrentLimit
  (:init
   (&key
    ((:actuator_names __actuator_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:current_limits __current_limits) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _actuator_names __actuator_names)
   (setq _current_limits __current_limits)
   self)
  (:actuator_names
   (&optional __actuator_names)
   (if __actuator_names (setq _actuator_names __actuator_names)) _actuator_names)
  (:current_limits
   (&optional __current_limits)
   (if __current_limits (setq _current_limits __current_limits)) _current_limits)
  (:serialization-length
   ()
   (+
    ;; string[] _actuator_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _actuator_names)) 4
    ;; float64[] _current_limits
    (* 8    (length _current_limits)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _actuator_names
     (write-long (length _actuator_names) s)
     (dolist (elem _actuator_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _current_limits
     (write-long (length _current_limits) s)
     (dotimes (i (length _current_limits))
       (sys::poke (elt _current_limits i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _actuator_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuator_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _actuator_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _current_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_limits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current_limits i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get pal_control_msgs::ActuatorCurrentLimit :md5sum-) "974a1b5c83bb8df5691c27dbd5b363bc")
(setf (get pal_control_msgs::ActuatorCurrentLimit :datatype-) "pal_control_msgs/ActuatorCurrentLimit")
(setf (get pal_control_msgs::ActuatorCurrentLimit :definition-)
      "# Names of the actuators whose current limit is being set
string[] actuator_names

# Actuator current limits. Values belong to the [0, 1] interval, are
# non-dimensional and represent the fraction of an actuator's maximum allowed
# current, e.g., 0.5 would set an actuator's current limit to half its
# maximum value.
float64[] current_limits


")



(provide :pal_control_msgs/ActuatorCurrentLimit "974a1b5c83bb8df5691c27dbd5b363bc")


