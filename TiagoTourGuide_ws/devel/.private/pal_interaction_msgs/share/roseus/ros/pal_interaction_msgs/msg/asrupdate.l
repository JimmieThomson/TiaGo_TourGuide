;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::asrupdate)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'asrupdate (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASRUPDATE")
  (make-package "PAL_INTERACTION_MSGS::ASRUPDATE"))

(in-package "ROS")
;;//! \htmlinclude asrupdate.msg.html


(defclass pal_interaction_msgs::asrupdate
  :super ros::object
  :slots (_language _enable_grammar _disable_grammar _acousticenv _active ))

(defmethod pal_interaction_msgs::asrupdate
  (:init
   (&key
    ((:language __language) "")
    ((:enable_grammar __enable_grammar) "")
    ((:disable_grammar __disable_grammar) "")
    ((:acousticenv __acousticenv) "")
    ((:active __active) nil)
    )
   (send-super :init)
   (setq _language (string __language))
   (setq _enable_grammar (string __enable_grammar))
   (setq _disable_grammar (string __disable_grammar))
   (setq _acousticenv (string __acousticenv))
   (setq _active __active)
   self)
  (:language
   (&optional __language)
   (if __language (setq _language __language)) _language)
  (:enable_grammar
   (&optional __enable_grammar)
   (if __enable_grammar (setq _enable_grammar __enable_grammar)) _enable_grammar)
  (:disable_grammar
   (&optional __disable_grammar)
   (if __disable_grammar (setq _disable_grammar __disable_grammar)) _disable_grammar)
  (:acousticenv
   (&optional __acousticenv)
   (if __acousticenv (setq _acousticenv __acousticenv)) _acousticenv)
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; string _language
    4 (length _language)
    ;; string _enable_grammar
    4 (length _enable_grammar)
    ;; string _disable_grammar
    4 (length _disable_grammar)
    ;; string _acousticenv
    4 (length _acousticenv)
    ;; bool _active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _language
       (write-long (length _language) s) (princ _language s)
     ;; string _enable_grammar
       (write-long (length _enable_grammar) s) (princ _enable_grammar s)
     ;; string _disable_grammar
       (write-long (length _disable_grammar) s) (princ _disable_grammar s)
     ;; string _acousticenv
       (write-long (length _acousticenv) s) (princ _acousticenv s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _language
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _language (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _enable_grammar
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _enable_grammar (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _disable_grammar
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _disable_grammar (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _acousticenv
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _acousticenv (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_interaction_msgs::asrupdate :md5sum-) "1f28e753977d8fe335d6b968a649f1ed")
(setf (get pal_interaction_msgs::asrupdate :datatype-) "pal_interaction_msgs/asrupdate")
(setf (get pal_interaction_msgs::asrupdate :definition-)
      "# V.1.0 of the ASR ROS API for the servie.
# just has the language and grammar to enable, the acoustic models to be used,
# and whether we want to activate or deactivate the recognizer.
string language
string enable_grammar
string disable_grammar
string acousticenv
bool active
")



(provide :pal_interaction_msgs/asrupdate "1f28e753977d8fe335d6b968a649f1ed")


