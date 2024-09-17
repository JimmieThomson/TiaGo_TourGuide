;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::ChangeBuilding)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'ChangeBuilding (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::CHANGEBUILDING")
  (make-package "PAL_NAVIGATION_MSGS::CHANGEBUILDING"))
(unless (find-package "PAL_NAVIGATION_MSGS::CHANGEBUILDINGREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::CHANGEBUILDINGREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::CHANGEBUILDINGRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::CHANGEBUILDINGRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::ChangeBuildingRequest
  :super ros::object
  :slots (_building_name _floor_name ))

(defmethod pal_navigation_msgs::ChangeBuildingRequest
  (:init
   (&key
    ((:building_name __building_name) "")
    ((:floor_name __floor_name) "")
    )
   (send-super :init)
   (setq _building_name (string __building_name))
   (setq _floor_name (string __floor_name))
   self)
  (:building_name
   (&optional __building_name)
   (if __building_name (setq _building_name __building_name)) _building_name)
  (:floor_name
   (&optional __floor_name)
   (if __floor_name (setq _floor_name __floor_name)) _floor_name)
  (:serialization-length
   ()
   (+
    ;; string _building_name
    4 (length _building_name)
    ;; string _floor_name
    4 (length _floor_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building_name
       (write-long (length _building_name) s) (princ _building_name s)
     ;; string _floor_name
       (write-long (length _floor_name) s) (princ _floor_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_navigation_msgs::ChangeBuildingResponse
  :super ros::object
  :slots (_success ))

(defmethod pal_navigation_msgs::ChangeBuildingResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_navigation_msgs::ChangeBuilding
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::ChangeBuilding :md5sum-) "f26c9152216ed3be6558d7ed27b2ae57")
(setf (get pal_navigation_msgs::ChangeBuilding :datatype-) "pal_navigation_msgs/ChangeBuilding")
(setf (get pal_navigation_msgs::ChangeBuilding :request) pal_navigation_msgs::ChangeBuildingRequest)
(setf (get pal_navigation_msgs::ChangeBuilding :response) pal_navigation_msgs::ChangeBuildingResponse)

(defmethod pal_navigation_msgs::ChangeBuildingRequest
  (:response () (instance pal_navigation_msgs::ChangeBuildingResponse :init)))

(setf (get pal_navigation_msgs::ChangeBuildingRequest :md5sum-) "f26c9152216ed3be6558d7ed27b2ae57")
(setf (get pal_navigation_msgs::ChangeBuildingRequest :datatype-) "pal_navigation_msgs/ChangeBuildingRequest")
(setf (get pal_navigation_msgs::ChangeBuildingRequest :definition-)
      "## Action for changing the current building and/or the current floor
string building_name # should correspond to a building description file in ~/.pal/maps/buildings
string floor_name # should correspond to a floor name within the building description file
---
bool success

")

(setf (get pal_navigation_msgs::ChangeBuildingResponse :md5sum-) "f26c9152216ed3be6558d7ed27b2ae57")
(setf (get pal_navigation_msgs::ChangeBuildingResponse :datatype-) "pal_navigation_msgs/ChangeBuildingResponse")
(setf (get pal_navigation_msgs::ChangeBuildingResponse :definition-)
      "## Action for changing the current building and/or the current floor
string building_name # should correspond to a building description file in ~/.pal/maps/buildings
string floor_name # should correspond to a floor name within the building description file
---
bool success

")



(provide :pal_navigation_msgs/ChangeBuilding "f26c9152216ed3be6558d7ed27b2ae57")


