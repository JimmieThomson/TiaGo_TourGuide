;; Auto-generated. Do not edit!


(when (boundp 'pal_common_msgs::GetString)
  (if (not (find-package "PAL_COMMON_MSGS"))
    (make-package "PAL_COMMON_MSGS"))
  (shadow 'GetString (find-package "PAL_COMMON_MSGS")))
(unless (find-package "PAL_COMMON_MSGS::GETSTRING")
  (make-package "PAL_COMMON_MSGS::GETSTRING"))
(unless (find-package "PAL_COMMON_MSGS::GETSTRINGREQUEST")
  (make-package "PAL_COMMON_MSGS::GETSTRINGREQUEST"))
(unless (find-package "PAL_COMMON_MSGS::GETSTRINGRESPONSE")
  (make-package "PAL_COMMON_MSGS::GETSTRINGRESPONSE"))

(in-package "ROS")





(defclass pal_common_msgs::GetStringRequest
  :super ros::object
  :slots ())

(defmethod pal_common_msgs::GetStringRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pal_common_msgs::GetStringResponse
  :super ros::object
  :slots (_data _success ))

(defmethod pal_common_msgs::GetStringResponse
  (:init
   (&key
    ((:data __data) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _success __success)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_common_msgs::GetString
  :super ros::object
  :slots ())

(setf (get pal_common_msgs::GetString :md5sum-) "3337ce060aec31bd63cf2cb6fe9b79d5")
(setf (get pal_common_msgs::GetString :datatype-) "pal_common_msgs/GetString")
(setf (get pal_common_msgs::GetString :request) pal_common_msgs::GetStringRequest)
(setf (get pal_common_msgs::GetString :response) pal_common_msgs::GetStringResponse)

(defmethod pal_common_msgs::GetStringRequest
  (:response () (instance pal_common_msgs::GetStringResponse :init)))

(setf (get pal_common_msgs::GetStringRequest :md5sum-) "3337ce060aec31bd63cf2cb6fe9b79d5")
(setf (get pal_common_msgs::GetStringRequest :datatype-) "pal_common_msgs/GetStringRequest")
(setf (get pal_common_msgs::GetStringRequest :definition-)
      "---
string data
bool success
")

(setf (get pal_common_msgs::GetStringResponse :md5sum-) "3337ce060aec31bd63cf2cb6fe9b79d5")
(setf (get pal_common_msgs::GetStringResponse :datatype-) "pal_common_msgs/GetStringResponse")
(setf (get pal_common_msgs::GetStringResponse :definition-)
      "---
string data
bool success
")



(provide :pal_common_msgs/GetString "3337ce060aec31bd63cf2cb6fe9b79d5")


