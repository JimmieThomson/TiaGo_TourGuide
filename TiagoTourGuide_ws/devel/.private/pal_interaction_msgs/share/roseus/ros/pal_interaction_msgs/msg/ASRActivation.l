;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::ASRActivation)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'ASRActivation (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION")
  (make-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))

(in-package "ROS")
;;//! \htmlinclude ASRActivation.msg.html


(intern "*ACTIVATE*" (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(shadow '*ACTIVATE* (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(defconstant pal_interaction_msgs::ASRActivation::*ACTIVATE* 1)
(intern "*DEACTIVATE*" (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(shadow '*DEACTIVATE* (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(defconstant pal_interaction_msgs::ASRActivation::*DEACTIVATE* 2)
(intern "*PAUSE*" (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(shadow '*PAUSE* (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(defconstant pal_interaction_msgs::ASRActivation::*PAUSE* 3)
(intern "*RESUME*" (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(shadow '*RESUME* (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(defconstant pal_interaction_msgs::ASRActivation::*RESUME* 4)
(intern "*CALIBRATE*" (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(shadow '*CALIBRATE* (find-package "PAL_INTERACTION_MSGS::ASRACTIVATION"))
(defconstant pal_interaction_msgs::ASRActivation::*CALIBRATE* 5)

(defun pal_interaction_msgs::ASRActivation-to-symbol (const)
  (cond
        ((= const 1) 'pal_interaction_msgs::ASRActivation::*ACTIVATE*)
        ((= const 2) 'pal_interaction_msgs::ASRActivation::*DEACTIVATE*)
        ((= const 3) 'pal_interaction_msgs::ASRActivation::*PAUSE*)
        ((= const 4) 'pal_interaction_msgs::ASRActivation::*RESUME*)
        ((= const 5) 'pal_interaction_msgs::ASRActivation::*CALIBRATE*)
        (t nil)))

(defclass pal_interaction_msgs::ASRActivation
  :super ros::object
  :slots (_action ))

(defmethod pal_interaction_msgs::ASRActivation
  (:init
   (&key
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _action (round __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; int8 _action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _action
       (write-byte _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action 127) (setq _action (- _action 256)))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::ASRActivation :md5sum-) "cbd42ef6448061151159fe3a848b2553")
(setf (get pal_interaction_msgs::ASRActivation :datatype-) "pal_interaction_msgs/ASRActivation")
(setf (get pal_interaction_msgs::ASRActivation :definition-)
      "# Message that can be used to send activation commands to the speech recognizer.
# It is possible to activate/deactivate or pause/resume the recognizer with these commands.
# action list
int8 ACTIVATE = 1
int8 DEACTIVATE = 2
int8 PAUSE = 3
int8 RESUME = 4
int8 CALIBRATE = 5

# Message variables
int8 action


")



(provide :pal_interaction_msgs/ASRActivation "cbd42ef6448061151159fe3a848b2553")


