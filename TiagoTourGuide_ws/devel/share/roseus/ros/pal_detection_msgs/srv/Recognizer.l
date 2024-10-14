;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::Recognizer)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'Recognizer (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::RECOGNIZER")
  (make-package "PAL_DETECTION_MSGS::RECOGNIZER"))
(unless (find-package "PAL_DETECTION_MSGS::RECOGNIZERREQUEST")
  (make-package "PAL_DETECTION_MSGS::RECOGNIZERREQUEST"))
(unless (find-package "PAL_DETECTION_MSGS::RECOGNIZERRESPONSE")
  (make-package "PAL_DETECTION_MSGS::RECOGNIZERRESPONSE"))

(in-package "ROS")





(defclass pal_detection_msgs::RecognizerRequest
  :super ros::object
  :slots (_enabled _minConfidence ))

(defmethod pal_detection_msgs::RecognizerRequest
  (:init
   (&key
    ((:enabled __enabled) nil)
    ((:minConfidence __minConfidence) 0.0)
    )
   (send-super :init)
   (setq _enabled __enabled)
   (setq _minConfidence (float __minConfidence))
   self)
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
  (:minConfidence
   (&optional __minConfidence)
   (if __minConfidence (setq _minConfidence __minConfidence)) _minConfidence)
  (:serialization-length
   ()
   (+
    ;; bool _enabled
    1
    ;; float32 _minConfidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; float32 _minConfidence
       (sys::poke _minConfidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _minConfidence
     (setq _minConfidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pal_detection_msgs::RecognizerResponse
  :super ros::object
  :slots ())

(defmethod pal_detection_msgs::RecognizerResponse
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

(defclass pal_detection_msgs::Recognizer
  :super ros::object
  :slots ())

(setf (get pal_detection_msgs::Recognizer :md5sum-) "1988e71091b2db6d28fdeea96cff5fb1")
(setf (get pal_detection_msgs::Recognizer :datatype-) "pal_detection_msgs/Recognizer")
(setf (get pal_detection_msgs::Recognizer :request) pal_detection_msgs::RecognizerRequest)
(setf (get pal_detection_msgs::Recognizer :response) pal_detection_msgs::RecognizerResponse)

(defmethod pal_detection_msgs::RecognizerRequest
  (:response () (instance pal_detection_msgs::RecognizerResponse :init)))

(setf (get pal_detection_msgs::RecognizerRequest :md5sum-) "1988e71091b2db6d28fdeea96cff5fb1")
(setf (get pal_detection_msgs::RecognizerRequest :datatype-) "pal_detection_msgs/RecognizerRequest")
(setf (get pal_detection_msgs::RecognizerRequest :definition-)
      "bool enabled
float32 minConfidence
---

")

(setf (get pal_detection_msgs::RecognizerResponse :md5sum-) "1988e71091b2db6d28fdeea96cff5fb1")
(setf (get pal_detection_msgs::RecognizerResponse :datatype-) "pal_detection_msgs/RecognizerResponse")
(setf (get pal_detection_msgs::RecognizerResponse :definition-)
      "bool enabled
float32 minConfidence
---

")



(provide :pal_detection_msgs/Recognizer "1988e71091b2db6d28fdeea96cff5fb1")


