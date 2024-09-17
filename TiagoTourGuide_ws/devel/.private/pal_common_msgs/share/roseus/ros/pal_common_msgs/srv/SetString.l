;; Auto-generated. Do not edit!


(when (boundp 'pal_common_msgs::SetString)
  (if (not (find-package "PAL_COMMON_MSGS"))
    (make-package "PAL_COMMON_MSGS"))
  (shadow 'SetString (find-package "PAL_COMMON_MSGS")))
(unless (find-package "PAL_COMMON_MSGS::SETSTRING")
  (make-package "PAL_COMMON_MSGS::SETSTRING"))
(unless (find-package "PAL_COMMON_MSGS::SETSTRINGREQUEST")
  (make-package "PAL_COMMON_MSGS::SETSTRINGREQUEST"))
(unless (find-package "PAL_COMMON_MSGS::SETSTRINGRESPONSE")
  (make-package "PAL_COMMON_MSGS::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass pal_common_msgs::SetStringRequest
  :super ros::object
  :slots (_data ))

(defmethod pal_common_msgs::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_common_msgs::SetStringResponse
  :super ros::object
  :slots (_success ))

(defmethod pal_common_msgs::SetStringResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_common_msgs::SetString
  :super ros::object
  :slots ())

(setf (get pal_common_msgs::SetString :md5sum-) "e7ac98ca304b04e45988c61adb6bc4ce")
(setf (get pal_common_msgs::SetString :datatype-) "pal_common_msgs/SetString")
(setf (get pal_common_msgs::SetString :request) pal_common_msgs::SetStringRequest)
(setf (get pal_common_msgs::SetString :response) pal_common_msgs::SetStringResponse)

(defmethod pal_common_msgs::SetStringRequest
  (:response () (instance pal_common_msgs::SetStringResponse :init)))

(setf (get pal_common_msgs::SetStringRequest :md5sum-) "e7ac98ca304b04e45988c61adb6bc4ce")
(setf (get pal_common_msgs::SetStringRequest :datatype-) "pal_common_msgs/SetStringRequest")
(setf (get pal_common_msgs::SetStringRequest :definition-)
      "string data
---
bool success
")

(setf (get pal_common_msgs::SetStringResponse :md5sum-) "e7ac98ca304b04e45988c61adb6bc4ce")
(setf (get pal_common_msgs::SetStringResponse :datatype-) "pal_common_msgs/SetStringResponse")
(setf (get pal_common_msgs::SetStringResponse :definition-)
      "string data
---
bool success
")



(provide :pal_common_msgs/SetString "e7ac98ca304b04e45988c61adb6bc4ce")


