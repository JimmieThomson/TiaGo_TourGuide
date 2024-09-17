;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::POIGroup)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'POIGroup (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::POIGROUP")
  (make-package "PAL_NAVIGATION_MSGS::POIGROUP"))

(in-package "ROS")
;;//! \htmlinclude POIGroup.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::POIGroup
  :super ros::object
  :slots (_group_name _poi_names ))

(defmethod pal_navigation_msgs::POIGroup
  (:init
   (&key
    ((:group_name __group_name) (instance std_msgs::String :init))
    ((:poi_names __poi_names) ())
    )
   (send-super :init)
   (setq _group_name __group_name)
   (setq _poi_names __poi_names)
   self)
  (:group_name
   (&rest __group_name)
   (if (keywordp (car __group_name))
       (send* _group_name __group_name)
     (progn
       (if __group_name (setq _group_name (car __group_name)))
       _group_name)))
  (:poi_names
   (&rest __poi_names)
   (if (keywordp (car __poi_names))
       (send* _poi_names __poi_names)
     (progn
       (if __poi_names (setq _poi_names (car __poi_names)))
       _poi_names)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _group_name
    (send _group_name :serialization-length)
    ;; std_msgs/String[] _poi_names
    (apply #'+ (send-all _poi_names :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _group_name
       (send _group_name :serialize s)
     ;; std_msgs/String[] _poi_names
     (write-long (length _poi_names) s)
     (dolist (elem _poi_names)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _group_name
     (send _group_name :deserialize buf ptr-) (incf ptr- (send _group_name :serialization-length))
   ;; std_msgs/String[] _poi_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poi_names (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _poi_names)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::POIGroup :md5sum-) "b26e4f03643dc943e8e2917c6c6e5767")
(setf (get pal_navigation_msgs::POIGroup :datatype-) "pal_navigation_msgs/POIGroup")
(setf (get pal_navigation_msgs::POIGroup :definition-)
      "std_msgs/String group_name
std_msgs/String[] poi_names

================================================================================
MSG: std_msgs/String
string data

")



(provide :pal_navigation_msgs/POIGroup "b26e4f03643dc943e8e2917c6c6e5767")


