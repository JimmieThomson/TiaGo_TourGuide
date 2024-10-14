;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::WebGuiEvent)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'WebGuiEvent (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::WEBGUIEVENT")
  (make-package "PAL_INTERACTION_MSGS::WEBGUIEVENT"))

(in-package "ROS")
;;//! \htmlinclude WebGuiEvent.msg.html


(defclass pal_interaction_msgs::WebGuiEvent
  :super ros::object
  :slots (_name _arg ))

(defmethod pal_interaction_msgs::WebGuiEvent
  (:init
   (&key
    ((:name __name) "")
    ((:arg __arg) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _arg (string __arg))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:arg
   (&optional __arg)
   (if __arg (setq _arg __arg)) _arg)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _arg
    4 (length _arg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _arg
       (write-long (length _arg) s) (princ _arg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _arg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _arg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::WebGuiEvent :md5sum-) "bd4a90be174b9e14b06cf397c1359fb1")
(setf (get pal_interaction_msgs::WebGuiEvent :datatype-) "pal_interaction_msgs/WebGuiEvent")
(setf (get pal_interaction_msgs::WebGuiEvent :definition-)
      "# message used by rb_flango
string name
# Expected contents:
# goTo
# setLanguage
string arg


")



(provide :pal_interaction_msgs/WebGuiEvent "bd4a90be174b9e14b06cf397c1359fb1")


