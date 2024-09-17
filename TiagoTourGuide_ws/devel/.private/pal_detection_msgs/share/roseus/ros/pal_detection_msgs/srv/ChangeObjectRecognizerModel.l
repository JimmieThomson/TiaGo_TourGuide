;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::ChangeObjectRecognizerModel)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'ChangeObjectRecognizerModel (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::CHANGEOBJECTRECOGNIZERMODEL")
  (make-package "PAL_DETECTION_MSGS::CHANGEOBJECTRECOGNIZERMODEL"))
(unless (find-package "PAL_DETECTION_MSGS::CHANGEOBJECTRECOGNIZERMODELREQUEST")
  (make-package "PAL_DETECTION_MSGS::CHANGEOBJECTRECOGNIZERMODELREQUEST"))
(unless (find-package "PAL_DETECTION_MSGS::CHANGEOBJECTRECOGNIZERMODELRESPONSE")
  (make-package "PAL_DETECTION_MSGS::CHANGEOBJECTRECOGNIZERMODELRESPONSE"))

(in-package "ROS")





(defclass pal_detection_msgs::ChangeObjectRecognizerModelRequest
  :super ros::object
  :slots (_model_name _reset_desired_classes_param ))

(defmethod pal_detection_msgs::ChangeObjectRecognizerModelRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    ((:reset_desired_classes_param __reset_desired_classes_param) nil)
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   (setq _reset_desired_classes_param __reset_desired_classes_param)
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:reset_desired_classes_param
   (&optional (__reset_desired_classes_param :null))
   (if (not (eq __reset_desired_classes_param :null)) (setq _reset_desired_classes_param __reset_desired_classes_param)) _reset_desired_classes_param)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ;; bool _reset_desired_classes_param
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; bool _reset_desired_classes_param
       (if _reset_desired_classes_param (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _reset_desired_classes_param
     (setq _reset_desired_classes_param (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_detection_msgs::ChangeObjectRecognizerModelResponse
  :super ros::object
  :slots (_status ))

(defmethod pal_detection_msgs::ChangeObjectRecognizerModelResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_detection_msgs::ChangeObjectRecognizerModel
  :super ros::object
  :slots ())

(setf (get pal_detection_msgs::ChangeObjectRecognizerModel :md5sum-) "772f7a8423ea945bf501239102bf9c1e")
(setf (get pal_detection_msgs::ChangeObjectRecognizerModel :datatype-) "pal_detection_msgs/ChangeObjectRecognizerModel")
(setf (get pal_detection_msgs::ChangeObjectRecognizerModel :request) pal_detection_msgs::ChangeObjectRecognizerModelRequest)
(setf (get pal_detection_msgs::ChangeObjectRecognizerModel :response) pal_detection_msgs::ChangeObjectRecognizerModelResponse)

(defmethod pal_detection_msgs::ChangeObjectRecognizerModelRequest
  (:response () (instance pal_detection_msgs::ChangeObjectRecognizerModelResponse :init)))

(setf (get pal_detection_msgs::ChangeObjectRecognizerModelRequest :md5sum-) "772f7a8423ea945bf501239102bf9c1e")
(setf (get pal_detection_msgs::ChangeObjectRecognizerModelRequest :datatype-) "pal_detection_msgs/ChangeObjectRecognizerModelRequest")
(setf (get pal_detection_msgs::ChangeObjectRecognizerModelRequest :definition-)
      "# This service allows to change the object recognizer model

# model_name: New object recognizer model name 
string model_name

# reset_desired_classes_param: reset the desired classes params for the new model
bool reset_desired_classes_param
---
# status: provides the status info of the service call
bool status

")

(setf (get pal_detection_msgs::ChangeObjectRecognizerModelResponse :md5sum-) "772f7a8423ea945bf501239102bf9c1e")
(setf (get pal_detection_msgs::ChangeObjectRecognizerModelResponse :datatype-) "pal_detection_msgs/ChangeObjectRecognizerModelResponse")
(setf (get pal_detection_msgs::ChangeObjectRecognizerModelResponse :definition-)
      "# This service allows to change the object recognizer model

# model_name: New object recognizer model name 
string model_name

# reset_desired_classes_param: reset the desired classes params for the new model
bool reset_desired_classes_param
---
# status: provides the status info of the service call
bool status

")



(provide :pal_detection_msgs/ChangeObjectRecognizerModel "772f7a8423ea945bf501239102bf9c1e")


