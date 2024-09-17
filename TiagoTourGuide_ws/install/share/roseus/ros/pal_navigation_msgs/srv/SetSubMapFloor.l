;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::SetSubMapFloor)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'SetSubMapFloor (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::SETSUBMAPFLOOR")
  (make-package "PAL_NAVIGATION_MSGS::SETSUBMAPFLOOR"))
(unless (find-package "PAL_NAVIGATION_MSGS::SETSUBMAPFLOORREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::SETSUBMAPFLOORREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::SETSUBMAPFLOORRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::SETSUBMAPFLOORRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::SetSubMapFloorRequest
  :super ros::object
  :slots (_index _floor ))

(defmethod pal_navigation_msgs::SetSubMapFloorRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:floor __floor) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _floor (round __floor))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:serialization-length
   ()
   (+
    ;; int8 _index
    1
    ;; int8 _floor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _index
       (write-byte _index s)
     ;; int8 _floor
       (write-byte _floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _index
     (setq _index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _index 127) (setq _index (- _index 256)))
   ;; int8 _floor
     (setq _floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _floor 127) (setq _floor (- _floor 256)))
   ;;
   self)
  )

(defclass pal_navigation_msgs::SetSubMapFloorResponse
  :super ros::object
  :slots ())

(defmethod pal_navigation_msgs::SetSubMapFloorResponse
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

(defclass pal_navigation_msgs::SetSubMapFloor
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::SetSubMapFloor :md5sum-) "7bc38a6f54d12ca287533bb3a693ed06")
(setf (get pal_navigation_msgs::SetSubMapFloor :datatype-) "pal_navigation_msgs/SetSubMapFloor")
(setf (get pal_navigation_msgs::SetSubMapFloor :request) pal_navigation_msgs::SetSubMapFloorRequest)
(setf (get pal_navigation_msgs::SetSubMapFloor :response) pal_navigation_msgs::SetSubMapFloorResponse)

(defmethod pal_navigation_msgs::SetSubMapFloorRequest
  (:response () (instance pal_navigation_msgs::SetSubMapFloorResponse :init)))

(setf (get pal_navigation_msgs::SetSubMapFloorRequest :md5sum-) "7bc38a6f54d12ca287533bb3a693ed06")
(setf (get pal_navigation_msgs::SetSubMapFloorRequest :datatype-) "pal_navigation_msgs/SetSubMapFloorRequest")
(setf (get pal_navigation_msgs::SetSubMapFloorRequest :definition-)
      "# Send Floor of SubMap at index i
int8 index
int8 floor
---

")

(setf (get pal_navigation_msgs::SetSubMapFloorResponse :md5sum-) "7bc38a6f54d12ca287533bb3a693ed06")
(setf (get pal_navigation_msgs::SetSubMapFloorResponse :datatype-) "pal_navigation_msgs/SetSubMapFloorResponse")
(setf (get pal_navigation_msgs::SetSubMapFloorResponse :definition-)
      "# Send Floor of SubMap at index i
int8 index
int8 floor
---

")



(provide :pal_navigation_msgs/SetSubMapFloor "7bc38a6f54d12ca287533bb3a693ed06")


