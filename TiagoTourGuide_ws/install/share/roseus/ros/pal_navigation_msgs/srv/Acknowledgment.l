;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::Acknowledgment)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'Acknowledgment (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::ACKNOWLEDGMENT")
  (make-package "PAL_NAVIGATION_MSGS::ACKNOWLEDGMENT"))
(unless (find-package "PAL_NAVIGATION_MSGS::ACKNOWLEDGMENTREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::ACKNOWLEDGMENTREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::ACKNOWLEDGMENTRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::ACKNOWLEDGMENTRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::AcknowledgmentRequest
  :super ros::object
  :slots (_input ))

(defmethod pal_navigation_msgs::AcknowledgmentRequest
  (:init
   (&key
    ((:input __input) "")
    )
   (send-super :init)
   (setq _input (string __input))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; string _input
    4 (length _input)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input
       (write-long (length _input) s) (princ _input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_navigation_msgs::AcknowledgmentResponse
  :super ros::object
  :slots (_output _error ))

(defmethod pal_navigation_msgs::AcknowledgmentResponse
  (:init
   (&key
    ((:output __output) nil)
    ((:error __error) "")
    )
   (send-super :init)
   (setq _output __output)
   (setq _error (string __error))
   self)
  (:output
   (&optional (__output :null))
   (if (not (eq __output :null)) (setq _output __output)) _output)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; bool _output
    1
    ;; string _error
    4 (length _error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _output
       (if _output (write-byte -1 s) (write-byte 0 s))
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _output
     (setq _output (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_navigation_msgs::Acknowledgment
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::Acknowledgment :md5sum-) "9bb3bf3b2fc32ac9789d69215f5851f4")
(setf (get pal_navigation_msgs::Acknowledgment :datatype-) "pal_navigation_msgs/Acknowledgment")
(setf (get pal_navigation_msgs::Acknowledgment :request) pal_navigation_msgs::AcknowledgmentRequest)
(setf (get pal_navigation_msgs::Acknowledgment :response) pal_navigation_msgs::AcknowledgmentResponse)

(defmethod pal_navigation_msgs::AcknowledgmentRequest
  (:response () (instance pal_navigation_msgs::AcknowledgmentResponse :init)))

(setf (get pal_navigation_msgs::AcknowledgmentRequest :md5sum-) "9bb3bf3b2fc32ac9789d69215f5851f4")
(setf (get pal_navigation_msgs::AcknowledgmentRequest :datatype-) "pal_navigation_msgs/AcknowledgmentRequest")
(setf (get pal_navigation_msgs::AcknowledgmentRequest :definition-)
      "## Acknowledgment service

string input
---
bool output
string error

")

(setf (get pal_navigation_msgs::AcknowledgmentResponse :md5sum-) "9bb3bf3b2fc32ac9789d69215f5851f4")
(setf (get pal_navigation_msgs::AcknowledgmentResponse :datatype-) "pal_navigation_msgs/AcknowledgmentResponse")
(setf (get pal_navigation_msgs::AcknowledgmentResponse :definition-)
      "## Acknowledgment service

string input
---
bool output
string error

")



(provide :pal_navigation_msgs/Acknowledgment "9bb3bf3b2fc32ac9789d69215f5851f4")


