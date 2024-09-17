;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::recognizerService)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'recognizerService (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::RECOGNIZERSERVICE")
  (make-package "PAL_INTERACTION_MSGS::RECOGNIZERSERVICE"))
(unless (find-package "PAL_INTERACTION_MSGS::RECOGNIZERSERVICEREQUEST")
  (make-package "PAL_INTERACTION_MSGS::RECOGNIZERSERVICEREQUEST"))
(unless (find-package "PAL_INTERACTION_MSGS::RECOGNIZERSERVICERESPONSE")
  (make-package "PAL_INTERACTION_MSGS::RECOGNIZERSERVICERESPONSE"))

(in-package "ROS")





(defclass pal_interaction_msgs::recognizerServiceRequest
  :super ros::object
  :slots (_asrupdate ))

(defmethod pal_interaction_msgs::recognizerServiceRequest
  (:init
   (&key
    ((:asrupdate __asrupdate) (instance pal_interaction_msgs::asrupdate :init))
    )
   (send-super :init)
   (setq _asrupdate __asrupdate)
   self)
  (:asrupdate
   (&rest __asrupdate)
   (if (keywordp (car __asrupdate))
       (send* _asrupdate __asrupdate)
     (progn
       (if __asrupdate (setq _asrupdate (car __asrupdate)))
       _asrupdate)))
  (:serialization-length
   ()
   (+
    ;; pal_interaction_msgs/asrupdate _asrupdate
    (send _asrupdate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_interaction_msgs/asrupdate _asrupdate
       (send _asrupdate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_interaction_msgs/asrupdate _asrupdate
     (send _asrupdate :deserialize buf ptr-) (incf ptr- (send _asrupdate :serialization-length))
   ;;
   self)
  )

(defclass pal_interaction_msgs::recognizerServiceResponse
  :super ros::object
  :slots ())

(defmethod pal_interaction_msgs::recognizerServiceResponse
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

(defclass pal_interaction_msgs::recognizerService
  :super ros::object
  :slots ())

(setf (get pal_interaction_msgs::recognizerService :md5sum-) "cfe4314795c9fe304282fdbecf5be6ec")
(setf (get pal_interaction_msgs::recognizerService :datatype-) "pal_interaction_msgs/recognizerService")
(setf (get pal_interaction_msgs::recognizerService :request) pal_interaction_msgs::recognizerServiceRequest)
(setf (get pal_interaction_msgs::recognizerService :response) pal_interaction_msgs::recognizerServiceResponse)

(defmethod pal_interaction_msgs::recognizerServiceRequest
  (:response () (instance pal_interaction_msgs::recognizerServiceResponse :init)))

(setf (get pal_interaction_msgs::recognizerServiceRequest :md5sum-) "cfe4314795c9fe304282fdbecf5be6ec")
(setf (get pal_interaction_msgs::recognizerServiceRequest :datatype-) "pal_interaction_msgs/recognizerServiceRequest")
(setf (get pal_interaction_msgs::recognizerServiceRequest :definition-)
      "pal_interaction_msgs/asrupdate asrupdate

================================================================================
MSG: pal_interaction_msgs/asrupdate
# V.1.0 of the ASR ROS API for the servie.
# just has the language and grammar to enable, the acoustic models to be used,
# and whether we want to activate or deactivate the recognizer.
string language
string enable_grammar
string disable_grammar
string acousticenv
---

")

(setf (get pal_interaction_msgs::recognizerServiceResponse :md5sum-) "cfe4314795c9fe304282fdbecf5be6ec")
(setf (get pal_interaction_msgs::recognizerServiceResponse :datatype-) "pal_interaction_msgs/recognizerServiceResponse")
(setf (get pal_interaction_msgs::recognizerServiceResponse :definition-)
      "pal_interaction_msgs/asrupdate asrupdate

================================================================================
MSG: pal_interaction_msgs/asrupdate
# V.1.0 of the ASR ROS API for the servie.
# just has the language and grammar to enable, the acoustic models to be used,
# and whether we want to activate or deactivate the recognizer.
string language
string enable_grammar
string disable_grammar
string acousticenv
---

")



(provide :pal_interaction_msgs/recognizerService "cfe4314795c9fe304282fdbecf5be6ec")


