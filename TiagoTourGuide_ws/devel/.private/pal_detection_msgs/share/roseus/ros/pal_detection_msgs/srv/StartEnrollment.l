;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::StartEnrollment)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'StartEnrollment (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::STARTENROLLMENT")
  (make-package "PAL_DETECTION_MSGS::STARTENROLLMENT"))
(unless (find-package "PAL_DETECTION_MSGS::STARTENROLLMENTREQUEST")
  (make-package "PAL_DETECTION_MSGS::STARTENROLLMENTREQUEST"))
(unless (find-package "PAL_DETECTION_MSGS::STARTENROLLMENTRESPONSE")
  (make-package "PAL_DETECTION_MSGS::STARTENROLLMENTRESPONSE"))

(in-package "ROS")





(defclass pal_detection_msgs::StartEnrollmentRequest
  :super ros::object
  :slots (_name ))

(defmethod pal_detection_msgs::StartEnrollmentRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_detection_msgs::StartEnrollmentResponse
  :super ros::object
  :slots (_result ))

(defmethod pal_detection_msgs::StartEnrollmentResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_detection_msgs::StartEnrollment
  :super ros::object
  :slots ())

(setf (get pal_detection_msgs::StartEnrollment :md5sum-) "ee91d68745ef4d7a247816a59dffedf2")
(setf (get pal_detection_msgs::StartEnrollment :datatype-) "pal_detection_msgs/StartEnrollment")
(setf (get pal_detection_msgs::StartEnrollment :request) pal_detection_msgs::StartEnrollmentRequest)
(setf (get pal_detection_msgs::StartEnrollment :response) pal_detection_msgs::StartEnrollmentResponse)

(defmethod pal_detection_msgs::StartEnrollmentRequest
  (:response () (instance pal_detection_msgs::StartEnrollmentResponse :init)))

(setf (get pal_detection_msgs::StartEnrollmentRequest :md5sum-) "ee91d68745ef4d7a247816a59dffedf2")
(setf (get pal_detection_msgs::StartEnrollmentRequest :datatype-) "pal_detection_msgs/StartEnrollmentRequest")
(setf (get pal_detection_msgs::StartEnrollmentRequest :definition-)
      "string name
---
bool result

")

(setf (get pal_detection_msgs::StartEnrollmentResponse :md5sum-) "ee91d68745ef4d7a247816a59dffedf2")
(setf (get pal_detection_msgs::StartEnrollmentResponse :datatype-) "pal_detection_msgs/StartEnrollmentResponse")
(setf (get pal_detection_msgs::StartEnrollmentResponse :definition-)
      "string name
---
bool result

")



(provide :pal_detection_msgs/StartEnrollment "ee91d68745ef4d7a247816a59dffedf2")


