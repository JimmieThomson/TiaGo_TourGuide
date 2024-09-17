;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::Input)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'Input (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::INPUT")
  (make-package "PAL_INTERACTION_MSGS::INPUT"))

(in-package "ROS")
;;//! \htmlinclude Input.msg.html


(intern "*INPUT_ACCEPT*" (find-package "PAL_INTERACTION_MSGS::INPUT"))
(shadow '*INPUT_ACCEPT* (find-package "PAL_INTERACTION_MSGS::INPUT"))
(defconstant pal_interaction_msgs::Input::*INPUT_ACCEPT* "INPUT_ACCEPT")
(intern "*INPUT_REJECT*" (find-package "PAL_INTERACTION_MSGS::INPUT"))
(shadow '*INPUT_REJECT* (find-package "PAL_INTERACTION_MSGS::INPUT"))
(defconstant pal_interaction_msgs::Input::*INPUT_REJECT* "INPUT_REJECT")
(intern "*INPUT_CANCEL*" (find-package "PAL_INTERACTION_MSGS::INPUT"))
(shadow '*INPUT_CANCEL* (find-package "PAL_INTERACTION_MSGS::INPUT"))
(defconstant pal_interaction_msgs::Input::*INPUT_CANCEL* "INPUT_CANCEL")
(intern "*OK*" (find-package "PAL_INTERACTION_MSGS::INPUT"))
(shadow '*OK* (find-package "PAL_INTERACTION_MSGS::INPUT"))
(defconstant pal_interaction_msgs::Input::*OK* "ok")
(intern "*YES*" (find-package "PAL_INTERACTION_MSGS::INPUT"))
(shadow '*YES* (find-package "PAL_INTERACTION_MSGS::INPUT"))
(defconstant pal_interaction_msgs::Input::*YES* "yes")
(intern "*NO*" (find-package "PAL_INTERACTION_MSGS::INPUT"))
(shadow '*NO* (find-package "PAL_INTERACTION_MSGS::INPUT"))
(defconstant pal_interaction_msgs::Input::*NO* "no")
(intern "*CANCEL*" (find-package "PAL_INTERACTION_MSGS::INPUT"))
(shadow '*CANCEL* (find-package "PAL_INTERACTION_MSGS::INPUT"))
(defconstant pal_interaction_msgs::Input::*CANCEL* "cancel")
(intern "*ABORT*" (find-package "PAL_INTERACTION_MSGS::INPUT"))
(shadow '*ABORT* (find-package "PAL_INTERACTION_MSGS::INPUT"))
(defconstant pal_interaction_msgs::Input::*ABORT* "abort")

(defun pal_interaction_msgs::Input-to-symbol (const)
  (cond
        (t nil)))

(defclass pal_interaction_msgs::Input
  :super ros::object
  :slots (_action _args ))

(defmethod pal_interaction_msgs::Input
  (:init
   (&key
    ((:action __action) "")
    ((:args __args) ())
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _args __args)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:args
   (&rest __args)
   (if (keywordp (car __args))
       (send* _args __args)
     (progn
       (if __args (setq _args (car __args)))
       _args)))
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; pal_interaction_msgs/InputArgument[] _args
    (apply #'+ (send-all _args :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; pal_interaction_msgs/InputArgument[] _args
     (write-long (length _args) s)
     (dolist (elem _args)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; pal_interaction_msgs/InputArgument[] _args
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _args (let (r) (dotimes (i n) (push (instance pal_interaction_msgs::InputArgument :init) r)) r))
     (dolist (elem- _args)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::Input :md5sum-) "c45da4349e5b4eb0f54025571ad69bd7")
(setf (get pal_interaction_msgs::Input :datatype-) "pal_interaction_msgs/Input")
(setf (get pal_interaction_msgs::Input :definition-)
      "#action to perform
string INPUT_ACCEPT = INPUT_ACCEPT
string INPUT_REJECT = INPUT_REJECT
string INPUT_CANCEL = INPUT_CANCEL

# Deprecated in favor of the INPUT_* above. Will be removed in a future message
string OK = ok
string YES = yes
string NO = no
string CANCEL = cancel
string ABORT = abort

# Can be any of the above, and additionally any custom action you want
string action

InputArgument[] args

================================================================================
MSG: pal_interaction_msgs/InputArgument
string key
string value

")



(provide :pal_interaction_msgs/Input "c45da4349e5b4eb0f54025571ad69bd7")


