;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::StopEnrollment)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'StopEnrollment (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::STOPENROLLMENT")
  (make-package "PAL_DETECTION_MSGS::STOPENROLLMENT"))
(unless (find-package "PAL_DETECTION_MSGS::STOPENROLLMENTREQUEST")
  (make-package "PAL_DETECTION_MSGS::STOPENROLLMENTREQUEST"))
(unless (find-package "PAL_DETECTION_MSGS::STOPENROLLMENTRESPONSE")
  (make-package "PAL_DETECTION_MSGS::STOPENROLLMENTRESPONSE"))

(in-package "ROS")





(defclass pal_detection_msgs::StopEnrollmentRequest
  :super ros::object
  :slots ())

(defmethod pal_detection_msgs::StopEnrollmentRequest
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

(defclass pal_detection_msgs::StopEnrollmentResponse
  :super ros::object
  :slots (_enrollment_ok _numFacesEnrolled _error_msg ))

(defmethod pal_detection_msgs::StopEnrollmentResponse
  (:init
   (&key
    ((:enrollment_ok __enrollment_ok) nil)
    ((:numFacesEnrolled __numFacesEnrolled) 0)
    ((:error_msg __error_msg) "")
    )
   (send-super :init)
   (setq _enrollment_ok __enrollment_ok)
   (setq _numFacesEnrolled (round __numFacesEnrolled))
   (setq _error_msg (string __error_msg))
   self)
  (:enrollment_ok
   (&optional (__enrollment_ok :null))
   (if (not (eq __enrollment_ok :null)) (setq _enrollment_ok __enrollment_ok)) _enrollment_ok)
  (:numFacesEnrolled
   (&optional __numFacesEnrolled)
   (if __numFacesEnrolled (setq _numFacesEnrolled __numFacesEnrolled)) _numFacesEnrolled)
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:serialization-length
   ()
   (+
    ;; bool _enrollment_ok
    1
    ;; int32 _numFacesEnrolled
    4
    ;; string _error_msg
    4 (length _error_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enrollment_ok
       (if _enrollment_ok (write-byte -1 s) (write-byte 0 s))
     ;; int32 _numFacesEnrolled
       (write-long _numFacesEnrolled s)
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enrollment_ok
     (setq _enrollment_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _numFacesEnrolled
     (setq _numFacesEnrolled (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_detection_msgs::StopEnrollment
  :super ros::object
  :slots ())

(setf (get pal_detection_msgs::StopEnrollment :md5sum-) "fb84ca50753c7bbc7737a1c5095dac61")
(setf (get pal_detection_msgs::StopEnrollment :datatype-) "pal_detection_msgs/StopEnrollment")
(setf (get pal_detection_msgs::StopEnrollment :request) pal_detection_msgs::StopEnrollmentRequest)
(setf (get pal_detection_msgs::StopEnrollment :response) pal_detection_msgs::StopEnrollmentResponse)

(defmethod pal_detection_msgs::StopEnrollmentRequest
  (:response () (instance pal_detection_msgs::StopEnrollmentResponse :init)))

(setf (get pal_detection_msgs::StopEnrollmentRequest :md5sum-) "fb84ca50753c7bbc7737a1c5095dac61")
(setf (get pal_detection_msgs::StopEnrollmentRequest :datatype-) "pal_detection_msgs/StopEnrollmentRequest")
(setf (get pal_detection_msgs::StopEnrollmentRequest :definition-)
      "---
bool enrollment_ok
int32 numFacesEnrolled
string error_msg

")

(setf (get pal_detection_msgs::StopEnrollmentResponse :md5sum-) "fb84ca50753c7bbc7737a1c5095dac61")
(setf (get pal_detection_msgs::StopEnrollmentResponse :datatype-) "pal_detection_msgs/StopEnrollmentResponse")
(setf (get pal_detection_msgs::StopEnrollmentResponse :definition-)
      "---
bool enrollment_ok
int32 numFacesEnrolled
string error_msg

")



(provide :pal_detection_msgs/StopEnrollment "fb84ca50753c7bbc7737a1c5095dac61")


