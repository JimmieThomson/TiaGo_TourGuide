;; Auto-generated. Do not edit!


(when (boundp 'pal_common_msgs::JointCurrent)
  (if (not (find-package "PAL_COMMON_MSGS"))
    (make-package "PAL_COMMON_MSGS"))
  (shadow 'JointCurrent (find-package "PAL_COMMON_MSGS")))
(unless (find-package "PAL_COMMON_MSGS::JOINTCURRENT")
  (make-package "PAL_COMMON_MSGS::JOINTCURRENT"))

(in-package "ROS")
;;//! \htmlinclude JointCurrent.msg.html


(defclass pal_common_msgs::JointCurrent
  :super ros::object
  :slots (_joints _current_limit ))

(defmethod pal_common_msgs::JointCurrent
  (:init
   (&key
    ((:joints __joints) "")
    ((:current_limit __current_limit) 0.0)
    )
   (send-super :init)
   (setq _joints (string __joints))
   (setq _current_limit (float __current_limit))
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:current_limit
   (&optional __current_limit)
   (if __current_limit (setq _current_limit __current_limit)) _current_limit)
  (:serialization-length
   ()
   (+
    ;; string _joints
    4 (length _joints)
    ;; float32 _current_limit
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joints
       (write-long (length _joints) s) (princ _joints s)
     ;; float32 _current_limit
       (sys::poke _current_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joints
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joints (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _current_limit
     (setq _current_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_common_msgs::JointCurrent :md5sum-) "aa38356f1b4f7b710d0060415affb648")
(setf (get pal_common_msgs::JointCurrent :datatype-) "pal_common_msgs/JointCurrent")
(setf (get pal_common_msgs::JointCurrent :definition-)
      "# Joints or group name of joints to activate or deactivate
string joints

# From 0.0 to 1.0 max current to aply to the joint
float32 current_limit

")



(provide :pal_common_msgs/JointCurrent "aa38356f1b4f7b710d0060415affb648")


