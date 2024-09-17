;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::RenameMap)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'RenameMap (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::RENAMEMAP")
  (make-package "PAL_NAVIGATION_MSGS::RENAMEMAP"))
(unless (find-package "PAL_NAVIGATION_MSGS::RENAMEMAPREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::RENAMEMAPREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::RENAMEMAPRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::RENAMEMAPRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::RenameMapRequest
  :super ros::object
  :slots (_current_map_name _new_map_name ))

(defmethod pal_navigation_msgs::RenameMapRequest
  (:init
   (&key
    ((:current_map_name __current_map_name) "")
    ((:new_map_name __new_map_name) "")
    )
   (send-super :init)
   (setq _current_map_name (string __current_map_name))
   (setq _new_map_name (string __new_map_name))
   self)
  (:current_map_name
   (&optional __current_map_name)
   (if __current_map_name (setq _current_map_name __current_map_name)) _current_map_name)
  (:new_map_name
   (&optional __new_map_name)
   (if __new_map_name (setq _new_map_name __new_map_name)) _new_map_name)
  (:serialization-length
   ()
   (+
    ;; string _current_map_name
    4 (length _current_map_name)
    ;; string _new_map_name
    4 (length _new_map_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _current_map_name
       (write-long (length _current_map_name) s) (princ _current_map_name s)
     ;; string _new_map_name
       (write-long (length _new_map_name) s) (princ _new_map_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _current_map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _new_map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_navigation_msgs::RenameMapResponse
  :super ros::object
  :slots (_success _message ))

(defmethod pal_navigation_msgs::RenameMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_navigation_msgs::RenameMap
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::RenameMap :md5sum-) "31cf40e688b10ff9fb9ee4663b8a4012")
(setf (get pal_navigation_msgs::RenameMap :datatype-) "pal_navigation_msgs/RenameMap")
(setf (get pal_navigation_msgs::RenameMap :request) pal_navigation_msgs::RenameMapRequest)
(setf (get pal_navigation_msgs::RenameMap :response) pal_navigation_msgs::RenameMapResponse)

(defmethod pal_navigation_msgs::RenameMapRequest
  (:response () (instance pal_navigation_msgs::RenameMapResponse :init)))

(setf (get pal_navigation_msgs::RenameMapRequest :md5sum-) "31cf40e688b10ff9fb9ee4663b8a4012")
(setf (get pal_navigation_msgs::RenameMapRequest :datatype-) "pal_navigation_msgs/RenameMapRequest")
(setf (get pal_navigation_msgs::RenameMapRequest :definition-)
      "## Service to change the name of an existing map

string current_map_name
string new_map_name
---
bool success
string message
")

(setf (get pal_navigation_msgs::RenameMapResponse :md5sum-) "31cf40e688b10ff9fb9ee4663b8a4012")
(setf (get pal_navigation_msgs::RenameMapResponse :datatype-) "pal_navigation_msgs/RenameMapResponse")
(setf (get pal_navigation_msgs::RenameMapResponse :definition-)
      "## Service to change the name of an existing map

string current_map_name
string new_map_name
---
bool success
string message
")



(provide :pal_navigation_msgs/RenameMap "31cf40e688b10ff9fb9ee4663b8a4012")


