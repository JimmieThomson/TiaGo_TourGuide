;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::GetNodes)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'GetNodes (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::GETNODES")
  (make-package "PAL_NAVIGATION_MSGS::GETNODES"))
(unless (find-package "PAL_NAVIGATION_MSGS::GETNODESREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::GETNODESREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::GETNODESRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::GETNODESRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::GetNodesRequest
  :super ros::object
  :slots ())

(defmethod pal_navigation_msgs::GetNodesRequest
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

(defclass pal_navigation_msgs::GetNodesResponse
  :super ros::object
  :slots (_node _totPOI ))

(defmethod pal_navigation_msgs::GetNodesResponse
  (:init
   (&key
    ((:node __node) 0)
    ((:totPOI __totPOI) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _totPOI (round __totPOI))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:totPOI
   (&optional __totPOI)
   (if __totPOI (setq _totPOI __totPOI)) _totPOI)
  (:serialization-length
   ()
   (+
    ;; int8 _node
    1
    ;; int8 _totPOI
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _node
       (write-byte _node s)
     ;; int8 _totPOI
       (write-byte _totPOI s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _node
     (setq _node (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _node 127) (setq _node (- _node 256)))
   ;; int8 _totPOI
     (setq _totPOI (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _totPOI 127) (setq _totPOI (- _totPOI 256)))
   ;;
   self)
  )

(defclass pal_navigation_msgs::GetNodes
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::GetNodes :md5sum-) "b6466ea7c9ababd4e7ce8d08d651a271")
(setf (get pal_navigation_msgs::GetNodes :datatype-) "pal_navigation_msgs/GetNodes")
(setf (get pal_navigation_msgs::GetNodes :request) pal_navigation_msgs::GetNodesRequest)
(setf (get pal_navigation_msgs::GetNodes :response) pal_navigation_msgs::GetNodesResponse)

(defmethod pal_navigation_msgs::GetNodesRequest
  (:response () (instance pal_navigation_msgs::GetNodesResponse :init)))

(setf (get pal_navigation_msgs::GetNodesRequest :md5sum-) "b6466ea7c9ababd4e7ce8d08d651a271")
(setf (get pal_navigation_msgs::GetNodesRequest :datatype-) "pal_navigation_msgs/GetNodesRequest")
(setf (get pal_navigation_msgs::GetNodesRequest :definition-)
      "# Request number of submaps when datas are loaded 

---
int8 node
int8 totPOI

")

(setf (get pal_navigation_msgs::GetNodesResponse :md5sum-) "b6466ea7c9ababd4e7ce8d08d651a271")
(setf (get pal_navigation_msgs::GetNodesResponse :datatype-) "pal_navigation_msgs/GetNodesResponse")
(setf (get pal_navigation_msgs::GetNodesResponse :definition-)
      "# Request number of submaps when datas are loaded 

---
int8 node
int8 totPOI

")



(provide :pal_navigation_msgs/GetNodes "b6466ea7c9ababd4e7ce8d08d651a271")


