;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::TabletPOI)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'TabletPOI (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::TABLETPOI")
  (make-package "PAL_NAVIGATION_MSGS::TABLETPOI"))

(in-package "ROS")
;;//! \htmlinclude TabletPOI.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::TabletPOI
  :super ros::object
  :slots (_POIs _IDs _map_id ))

(defmethod pal_navigation_msgs::TabletPOI
  (:init
   (&key
    ((:POIs __POIs) ())
    ((:IDs __IDs) ())
    ((:map_id __map_id) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _POIs __POIs)
   (setq _IDs __IDs)
   (setq _map_id __map_id)
   self)
  (:POIs
   (&rest __POIs)
   (if (keywordp (car __POIs))
       (send* _POIs __POIs)
     (progn
       (if __POIs (setq _POIs (car __POIs)))
       _POIs)))
  (:IDs
   (&rest __IDs)
   (if (keywordp (car __IDs))
       (send* _IDs __IDs)
     (progn
       (if __IDs (setq _IDs (car __IDs)))
       _IDs)))
  (:map_id
   (&rest __map_id)
   (if (keywordp (car __map_id))
       (send* _map_id __map_id)
     (progn
       (if __map_id (setq _map_id (car __map_id)))
       _map_id)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _POIs
    (apply #'+ (send-all _POIs :serialization-length)) 4
    ;; std_msgs/String[] _IDs
    (apply #'+ (send-all _IDs :serialization-length)) 4
    ;; std_msgs/String _map_id
    (send _map_id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _POIs
     (write-long (length _POIs) s)
     (dolist (elem _POIs)
       (send elem :serialize s)
       )
     ;; std_msgs/String[] _IDs
     (write-long (length _IDs) s)
     (dolist (elem _IDs)
       (send elem :serialize s)
       )
     ;; std_msgs/String _map_id
       (send _map_id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _POIs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _POIs (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _POIs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String[] _IDs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _IDs (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _IDs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String _map_id
     (send _map_id :deserialize buf ptr-) (incf ptr- (send _map_id :serialization-length))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::TabletPOI :md5sum-) "2ec4b22e981d882e9e77e8562cb8c5fe")
(setf (get pal_navigation_msgs::TabletPOI :datatype-) "pal_navigation_msgs/TabletPOI")
(setf (get pal_navigation_msgs::TabletPOI :definition-)
      "geometry_msgs/Point[] POIs

std_msgs/String[] IDs

std_msgs/String map_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/String
string data

")



(provide :pal_navigation_msgs/TabletPOI "2ec4b22e981d882e9e77e8562cb8c5fe")


