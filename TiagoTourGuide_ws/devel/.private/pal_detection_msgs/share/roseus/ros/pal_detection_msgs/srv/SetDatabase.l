;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::SetDatabase)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'SetDatabase (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::SETDATABASE")
  (make-package "PAL_DETECTION_MSGS::SETDATABASE"))
(unless (find-package "PAL_DETECTION_MSGS::SETDATABASEREQUEST")
  (make-package "PAL_DETECTION_MSGS::SETDATABASEREQUEST"))
(unless (find-package "PAL_DETECTION_MSGS::SETDATABASERESPONSE")
  (make-package "PAL_DETECTION_MSGS::SETDATABASERESPONSE"))

(in-package "ROS")





(defclass pal_detection_msgs::SetDatabaseRequest
  :super ros::object
  :slots (_databaseName _purgeAll ))

(defmethod pal_detection_msgs::SetDatabaseRequest
  (:init
   (&key
    ((:databaseName __databaseName) "")
    ((:purgeAll __purgeAll) nil)
    )
   (send-super :init)
   (setq _databaseName (string __databaseName))
   (setq _purgeAll __purgeAll)
   self)
  (:databaseName
   (&optional __databaseName)
   (if __databaseName (setq _databaseName __databaseName)) _databaseName)
  (:purgeAll
   (&optional (__purgeAll :null))
   (if (not (eq __purgeAll :null)) (setq _purgeAll __purgeAll)) _purgeAll)
  (:serialization-length
   ()
   (+
    ;; string _databaseName
    4 (length _databaseName)
    ;; bool _purgeAll
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _databaseName
       (write-long (length _databaseName) s) (princ _databaseName s)
     ;; bool _purgeAll
       (if _purgeAll (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _databaseName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _databaseName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _purgeAll
     (setq _purgeAll (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_detection_msgs::SetDatabaseResponse
  :super ros::object
  :slots ())

(defmethod pal_detection_msgs::SetDatabaseResponse
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

(defclass pal_detection_msgs::SetDatabase
  :super ros::object
  :slots ())

(setf (get pal_detection_msgs::SetDatabase :md5sum-) "1cf0b9bc147e7ba402d13d5645c217d7")
(setf (get pal_detection_msgs::SetDatabase :datatype-) "pal_detection_msgs/SetDatabase")
(setf (get pal_detection_msgs::SetDatabase :request) pal_detection_msgs::SetDatabaseRequest)
(setf (get pal_detection_msgs::SetDatabase :response) pal_detection_msgs::SetDatabaseResponse)

(defmethod pal_detection_msgs::SetDatabaseRequest
  (:response () (instance pal_detection_msgs::SetDatabaseResponse :init)))

(setf (get pal_detection_msgs::SetDatabaseRequest :md5sum-) "1cf0b9bc147e7ba402d13d5645c217d7")
(setf (get pal_detection_msgs::SetDatabaseRequest :datatype-) "pal_detection_msgs/SetDatabaseRequest")
(setf (get pal_detection_msgs::SetDatabaseRequest :definition-)
      "string databaseName
bool purgeAll
---

")

(setf (get pal_detection_msgs::SetDatabaseResponse :md5sum-) "1cf0b9bc147e7ba402d13d5645c217d7")
(setf (get pal_detection_msgs::SetDatabaseResponse :datatype-) "pal_detection_msgs/SetDatabaseResponse")
(setf (get pal_detection_msgs::SetDatabaseResponse :definition-)
      "string databaseName
bool purgeAll
---

")



(provide :pal_detection_msgs/SetDatabase "1cf0b9bc147e7ba402d13d5645c217d7")


