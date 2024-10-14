;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::SoundLocalisationService)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'SoundLocalisationService (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::SOUNDLOCALISATIONSERVICE")
  (make-package "PAL_INTERACTION_MSGS::SOUNDLOCALISATIONSERVICE"))
(unless (find-package "PAL_INTERACTION_MSGS::SOUNDLOCALISATIONSERVICEREQUEST")
  (make-package "PAL_INTERACTION_MSGS::SOUNDLOCALISATIONSERVICEREQUEST"))
(unless (find-package "PAL_INTERACTION_MSGS::SOUNDLOCALISATIONSERVICERESPONSE")
  (make-package "PAL_INTERACTION_MSGS::SOUNDLOCALISATIONSERVICERESPONSE"))

(in-package "ROS")





(defclass pal_interaction_msgs::SoundLocalisationServiceRequest
  :super ros::object
  :slots (_enabling ))

(defmethod pal_interaction_msgs::SoundLocalisationServiceRequest
  (:init
   (&key
    ((:enabling __enabling) (instance pal_interaction_msgs::EnablingSoundLocalisation :init))
    )
   (send-super :init)
   (setq _enabling __enabling)
   self)
  (:enabling
   (&rest __enabling)
   (if (keywordp (car __enabling))
       (send* _enabling __enabling)
     (progn
       (if __enabling (setq _enabling (car __enabling)))
       _enabling)))
  (:serialization-length
   ()
   (+
    ;; pal_interaction_msgs/EnablingSoundLocalisation _enabling
    (send _enabling :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_interaction_msgs/EnablingSoundLocalisation _enabling
       (send _enabling :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_interaction_msgs/EnablingSoundLocalisation _enabling
     (send _enabling :deserialize buf ptr-) (incf ptr- (send _enabling :serialization-length))
   ;;
   self)
  )

(defclass pal_interaction_msgs::SoundLocalisationServiceResponse
  :super ros::object
  :slots ())

(defmethod pal_interaction_msgs::SoundLocalisationServiceResponse
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

(defclass pal_interaction_msgs::SoundLocalisationService
  :super ros::object
  :slots ())

(setf (get pal_interaction_msgs::SoundLocalisationService :md5sum-) "cc68fffb4060073f9a9cee5375c725ea")
(setf (get pal_interaction_msgs::SoundLocalisationService :datatype-) "pal_interaction_msgs/SoundLocalisationService")
(setf (get pal_interaction_msgs::SoundLocalisationService :request) pal_interaction_msgs::SoundLocalisationServiceRequest)
(setf (get pal_interaction_msgs::SoundLocalisationService :response) pal_interaction_msgs::SoundLocalisationServiceResponse)

(defmethod pal_interaction_msgs::SoundLocalisationServiceRequest
  (:response () (instance pal_interaction_msgs::SoundLocalisationServiceResponse :init)))

(setf (get pal_interaction_msgs::SoundLocalisationServiceRequest :md5sum-) "cc68fffb4060073f9a9cee5375c725ea")
(setf (get pal_interaction_msgs::SoundLocalisationServiceRequest :datatype-) "pal_interaction_msgs/SoundLocalisationServiceRequest")
(setf (get pal_interaction_msgs::SoundLocalisationServiceRequest :definition-)
      "pal_interaction_msgs/EnablingSoundLocalisation enabling

================================================================================
MSG: pal_interaction_msgs/EnablingSoundLocalisation
bool enable
---

")

(setf (get pal_interaction_msgs::SoundLocalisationServiceResponse :md5sum-) "cc68fffb4060073f9a9cee5375c725ea")
(setf (get pal_interaction_msgs::SoundLocalisationServiceResponse :datatype-) "pal_interaction_msgs/SoundLocalisationServiceResponse")
(setf (get pal_interaction_msgs::SoundLocalisationServiceResponse :definition-)
      "pal_interaction_msgs/EnablingSoundLocalisation enabling

================================================================================
MSG: pal_interaction_msgs/EnablingSoundLocalisation
bool enable
---

")



(provide :pal_interaction_msgs/SoundLocalisationService "cc68fffb4060073f9a9cee5375c725ea")


