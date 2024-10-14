;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::asrresult)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'asrresult (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASRRESULT")
  (make-package "PAL_INTERACTION_MSGS::ASRRESULT"))

(in-package "ROS")
;;//! \htmlinclude asrresult.msg.html


(intern "*CONFIDENCE_UNDEFINED*" (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(shadow '*CONFIDENCE_UNDEFINED* (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(defconstant pal_interaction_msgs::asrresult::*CONFIDENCE_UNDEFINED* -1)
(intern "*CONFIDENCE_POOR*" (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(shadow '*CONFIDENCE_POOR* (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(defconstant pal_interaction_msgs::asrresult::*CONFIDENCE_POOR* 1)
(intern "*CONFIDENCE_LOW*" (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(shadow '*CONFIDENCE_LOW* (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(defconstant pal_interaction_msgs::asrresult::*CONFIDENCE_LOW* 2)
(intern "*CONFIDENCE_GOOD*" (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(shadow '*CONFIDENCE_GOOD* (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(defconstant pal_interaction_msgs::asrresult::*CONFIDENCE_GOOD* 3)
(intern "*CONFIDENCE_MAX*" (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(shadow '*CONFIDENCE_MAX* (find-package "PAL_INTERACTION_MSGS::ASRRESULT"))
(defconstant pal_interaction_msgs::asrresult::*CONFIDENCE_MAX* 4)

(defun pal_interaction_msgs::asrresult-to-symbol (const)
  (cond
        ((= const -1) 'pal_interaction_msgs::asrresult::*CONFIDENCE_UNDEFINED*)
        ((= const 1) 'pal_interaction_msgs::asrresult::*CONFIDENCE_POOR*)
        ((= const 2) 'pal_interaction_msgs::asrresult::*CONFIDENCE_LOW*)
        ((= const 3) 'pal_interaction_msgs::asrresult::*CONFIDENCE_GOOD*)
        ((= const 4) 'pal_interaction_msgs::asrresult::*CONFIDENCE_MAX*)
        (t nil)))

(defclass pal_interaction_msgs::asrresult
  :super ros::object
  :slots (_text _confidence _start _end _tags ))

(defmethod pal_interaction_msgs::asrresult
  (:init
   (&key
    ((:text __text) "")
    ((:confidence __confidence) 0)
    ((:start __start) (instance ros::time :init))
    ((:end __end) (instance ros::time :init))
    ((:tags __tags) ())
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _confidence (round __confidence))
   (setq _start __start)
   (setq _end __end)
   (setq _tags __tags)
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:tags
   (&rest __tags)
   (if (keywordp (car __tags))
       (send* _tags __tags)
     (progn
       (if __tags (setq _tags (car __tags)))
       _tags)))
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; int8 _confidence
    1
    ;; time _start
    8
    ;; time _end
    8
    ;; pal_interaction_msgs/actiontag[] _tags
    (apply #'+ (send-all _tags :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; int8 _confidence
       (write-byte _confidence s)
     ;; time _start
       (write-long (send _start :sec) s) (write-long (send _start :nsec) s)
     ;; time _end
       (write-long (send _end :sec) s) (write-long (send _end :nsec) s)
     ;; pal_interaction_msgs/actiontag[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _confidence
     (setq _confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _confidence 127) (setq _confidence (- _confidence 256)))
   ;; time _start
     (send _start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _end
     (send _end :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _end :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pal_interaction_msgs/actiontag[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (let (r) (dotimes (i n) (push (instance pal_interaction_msgs::actiontag :init) r)) r))
     (dolist (elem- _tags)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::asrresult :md5sum-) "a6ebae90936a20cef967166ff7e96f64")
(setf (get pal_interaction_msgs::asrresult :datatype-) "pal_interaction_msgs/asrresult")
(setf (get pal_interaction_msgs::asrresult :definition-)
      "## Message that containes the recognized utterance.
## Confidence values
int8 CONFIDENCE_UNDEFINED = -1
int8 CONFIDENCE_POOR = 1
int8 CONFIDENCE_LOW  = 2
int8 CONFIDENCE_GOOD = 3
int8 CONFIDENCE_MAX  = 4

# ASR result messages used by RosRecognizerServer

# text recognized
string text

# confidence with values from POOR to MAX
int8 confidence

# start and end of the recognizer uterance.
time start
time end

# list of recognized tags
# key value pairs of strings extracted from the text
# given the action tags placed in the grammar.
actiontag[] tags

================================================================================
MSG: pal_interaction_msgs/actiontag
# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar 

string key
string value
")



(provide :pal_interaction_msgs/asrresult "a6ebae90936a20cef967166ff7e96f64")


