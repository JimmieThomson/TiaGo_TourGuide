;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::AvailableMaps)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'AvailableMaps (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::AVAILABLEMAPS")
  (make-package "PAL_NAVIGATION_MSGS::AVAILABLEMAPS"))

(in-package "ROS")
;;//! \htmlinclude AvailableMaps.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::AvailableMaps
  :super ros::object
  :slots (_map_names ))

(defmethod pal_navigation_msgs::AvailableMaps
  (:init
   (&key
    ((:map_names __map_names) ())
    )
   (send-super :init)
   (setq _map_names __map_names)
   self)
  (:map_names
   (&rest __map_names)
   (if (keywordp (car __map_names))
       (send* _map_names __map_names)
     (progn
       (if __map_names (setq _map_names (car __map_names)))
       _map_names)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String[] _map_names
    (apply #'+ (send-all _map_names :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String[] _map_names
     (write-long (length _map_names) s)
     (dolist (elem _map_names)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String[] _map_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_names (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _map_names)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::AvailableMaps :md5sum-) "9db0e90f3d30f37c0bc8af001416200d")
(setf (get pal_navigation_msgs::AvailableMaps :datatype-) "pal_navigation_msgs/AvailableMaps")
(setf (get pal_navigation_msgs::AvailableMaps :definition-)
      "# TODO: This may change!
std_msgs/String[] map_names

================================================================================
MSG: std_msgs/String
string data

")



(provide :pal_navigation_msgs/AvailableMaps "9db0e90f3d30f37c0bc8af001416200d")


