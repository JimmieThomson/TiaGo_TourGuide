;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::ASRLangModelMngmt)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'ASRLangModelMngmt (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT")
  (make-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT"))

(in-package "ROS")
;;//! \htmlinclude ASRLangModelMngmt.msg.html


(intern "*ENABLE*" (find-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT"))
(shadow '*ENABLE* (find-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT"))
(defconstant pal_interaction_msgs::ASRLangModelMngmt::*ENABLE* 1)
(intern "*DISABLE*" (find-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT"))
(shadow '*DISABLE* (find-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT"))
(defconstant pal_interaction_msgs::ASRLangModelMngmt::*DISABLE* 2)
(intern "*LOAD*" (find-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT"))
(shadow '*LOAD* (find-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT"))
(defconstant pal_interaction_msgs::ASRLangModelMngmt::*LOAD* 3)
(intern "*UNLOAD*" (find-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT"))
(shadow '*UNLOAD* (find-package "PAL_INTERACTION_MSGS::ASRLANGMODELMNGMT"))
(defconstant pal_interaction_msgs::ASRLangModelMngmt::*UNLOAD* 4)

(defun pal_interaction_msgs::ASRLangModelMngmt-to-symbol (const)
  (cond
        ((= const 1) 'pal_interaction_msgs::ASRLangModelMngmt::*ENABLE*)
        ((= const 2) 'pal_interaction_msgs::ASRLangModelMngmt::*DISABLE*)
        ((= const 3) 'pal_interaction_msgs::ASRLangModelMngmt::*LOAD*)
        ((= const 4) 'pal_interaction_msgs::ASRLangModelMngmt::*UNLOAD*)
        (t nil)))

(defclass pal_interaction_msgs::ASRLangModelMngmt
  :super ros::object
  :slots (_action _modelName ))

(defmethod pal_interaction_msgs::ASRLangModelMngmt
  (:init
   (&key
    ((:action __action) 0)
    ((:modelName __modelName) "")
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _modelName (string __modelName))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:modelName
   (&optional __modelName)
   (if __modelName (setq _modelName __modelName)) _modelName)
  (:serialization-length
   ()
   (+
    ;; int8 _action
    1
    ;; string _modelName
    4 (length _modelName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _action
       (write-byte _action s)
     ;; string _modelName
       (write-long (length _modelName) s) (princ _modelName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action 127) (setq _action (- _action 256)))
   ;; string _modelName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _modelName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::ASRLangModelMngmt :md5sum-) "b14d87d721997c14475b6bf74e854ad8")
(setf (get pal_interaction_msgs::ASRLangModelMngmt :datatype-) "pal_interaction_msgs/ASRLangModelMngmt")
(setf (get pal_interaction_msgs::ASRLangModelMngmt :definition-)
      "# This message is to be used in the ASR service to manage the grammars
# makes possible to enable/disable, load/unload grammars.


# Types of action
int8 ENABLE = 1
int8 DISABLE = 2
int8 LOAD = 3
int8 UNLOAD = 4

# Message variables
# Type of action requested
int8 action

# Name of the grammar to actuate on.
string modelName

")



(provide :pal_interaction_msgs/ASRLangModelMngmt "b14d87d721997c14475b6bf74e854ad8")


