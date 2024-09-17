;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::GetSubMap)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'GetSubMap (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::GETSUBMAP")
  (make-package "PAL_NAVIGATION_MSGS::GETSUBMAP"))
(unless (find-package "PAL_NAVIGATION_MSGS::GETSUBMAPREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::GETSUBMAPREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::GETSUBMAPRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::GETSUBMAPRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::GetSubMapRequest
  :super ros::object
  :slots (_index ))

(defmethod pal_navigation_msgs::GetSubMapRequest
  (:init
   (&key
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; int8 _index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _index
       (write-byte _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _index
     (setq _index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _index 127) (setq _index (- _index 256)))
   ;;
   self)
  )

(defclass pal_navigation_msgs::GetSubMapResponse
  :super ros::object
  :slots ())

(defmethod pal_navigation_msgs::GetSubMapResponse
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

(defclass pal_navigation_msgs::GetSubMap
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::GetSubMap :md5sum-) "c4ecff52046eaecf0190e650b1958286")
(setf (get pal_navigation_msgs::GetSubMap :datatype-) "pal_navigation_msgs/GetSubMap")
(setf (get pal_navigation_msgs::GetSubMap :request) pal_navigation_msgs::GetSubMapRequest)
(setf (get pal_navigation_msgs::GetSubMap :response) pal_navigation_msgs::GetSubMapResponse)

(defmethod pal_navigation_msgs::GetSubMapRequest
  (:response () (instance pal_navigation_msgs::GetSubMapResponse :init)))

(setf (get pal_navigation_msgs::GetSubMapRequest :md5sum-) "c4ecff52046eaecf0190e650b1958286")
(setf (get pal_navigation_msgs::GetSubMapRequest :datatype-) "pal_navigation_msgs/GetSubMapRequest")
(setf (get pal_navigation_msgs::GetSubMapRequest :definition-)
      "# Request SubMap using index 
int8 index
---




")

(setf (get pal_navigation_msgs::GetSubMapResponse :md5sum-) "c4ecff52046eaecf0190e650b1958286")
(setf (get pal_navigation_msgs::GetSubMapResponse :datatype-) "pal_navigation_msgs/GetSubMapResponse")
(setf (get pal_navigation_msgs::GetSubMapResponse :definition-)
      "# Request SubMap using index 
int8 index
---




")



(provide :pal_navigation_msgs/GetSubMap "c4ecff52046eaecf0190e650b1958286")


