;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::ListMaps)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'ListMaps (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::LISTMAPS")
  (make-package "PAL_NAVIGATION_MSGS::LISTMAPS"))
(unless (find-package "PAL_NAVIGATION_MSGS::LISTMAPSREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::LISTMAPSREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::LISTMAPSRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::LISTMAPSRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::ListMapsRequest
  :super ros::object
  :slots ())

(defmethod pal_navigation_msgs::ListMapsRequest
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

(defclass pal_navigation_msgs::ListMapsResponse
  :super ros::object
  :slots (_success _maps ))

(defmethod pal_navigation_msgs::ListMapsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:maps __maps) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _maps __maps)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:maps
   (&optional __maps)
   (if __maps (setq _maps __maps)) _maps)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string[] _maps
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _maps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string[] _maps
     (write-long (length _maps) s)
     (dolist (elem _maps)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _maps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _maps (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _maps i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass pal_navigation_msgs::ListMaps
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::ListMaps :md5sum-) "1ab49819563e07b1a3a5b6c08ee434d1")
(setf (get pal_navigation_msgs::ListMaps :datatype-) "pal_navigation_msgs/ListMaps")
(setf (get pal_navigation_msgs::ListMaps :request) pal_navigation_msgs::ListMapsRequest)
(setf (get pal_navigation_msgs::ListMaps :response) pal_navigation_msgs::ListMapsResponse)

(defmethod pal_navigation_msgs::ListMapsRequest
  (:response () (instance pal_navigation_msgs::ListMapsResponse :init)))

(setf (get pal_navigation_msgs::ListMapsRequest :md5sum-) "1ab49819563e07b1a3a5b6c08ee434d1")
(setf (get pal_navigation_msgs::ListMapsRequest :datatype-) "pal_navigation_msgs/ListMapsRequest")
(setf (get pal_navigation_msgs::ListMapsRequest :definition-)
      "## ListMaps service
---
bool success
string[] maps

")

(setf (get pal_navigation_msgs::ListMapsResponse :md5sum-) "1ab49819563e07b1a3a5b6c08ee434d1")
(setf (get pal_navigation_msgs::ListMapsResponse :datatype-) "pal_navigation_msgs/ListMapsResponse")
(setf (get pal_navigation_msgs::ListMapsResponse :definition-)
      "## ListMaps service
---
bool success
string[] maps

")



(provide :pal_navigation_msgs/ListMaps "1ab49819563e07b1a3a5b6c08ee434d1")


