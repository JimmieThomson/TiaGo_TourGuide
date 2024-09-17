;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::TtsMark)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'TtsMark (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::TTSMARK")
  (make-package "PAL_INTERACTION_MSGS::TTSMARK"))

(in-package "ROS")
;;//! \htmlinclude TtsMark.msg.html


(defclass pal_interaction_msgs::TtsMark
  :super ros::object
  :slots (_id _keys _value ))

(defmethod pal_interaction_msgs::TtsMark
  (:init
   (&key
    ((:id __id) "")
    ((:keys __keys) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:value __value) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _keys __keys)
   (setq _value __value)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:keys
   (&optional __keys)
   (if __keys (setq _keys __keys)) _keys)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string[] _keys
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _keys)) 4
    ;; string[] _value
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string[] _keys
     (write-long (length _keys) s)
     (dolist (elem _keys)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _value
     (write-long (length _value) s)
     (dolist (elem _value)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _keys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keys (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _keys i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _value i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::TtsMark :md5sum-) "10ae9a83cac56ac1660df7e26eabeac9")
(setf (get pal_interaction_msgs::TtsMark :datatype-) "pal_interaction_msgs/TtsMark")
(setf (get pal_interaction_msgs::TtsMark :definition-)
      "# id will contain the value of name argument in the <mark/>
# tags when they are placed in synthesised text.
# Filling keys and value is not implemented yet.
string id
string[] keys
string[] value
")



(provide :pal_interaction_msgs/TtsMark "10ae9a83cac56ac1660df7e26eabeac9")


