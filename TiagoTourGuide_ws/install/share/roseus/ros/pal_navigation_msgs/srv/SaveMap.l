;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::SaveMap)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'SaveMap (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::SAVEMAP")
  (make-package "PAL_NAVIGATION_MSGS::SAVEMAP"))
(unless (find-package "PAL_NAVIGATION_MSGS::SAVEMAPREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::SAVEMAPREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::SAVEMAPRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::SAVEMAPRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::SaveMapRequest
  :super ros::object
  :slots (_directory ))

(defmethod pal_navigation_msgs::SaveMapRequest
  (:init
   (&key
    ((:directory __directory) "")
    )
   (send-super :init)
   (setq _directory (string __directory))
   self)
  (:directory
   (&optional __directory)
   (if __directory (setq _directory __directory)) _directory)
  (:serialization-length
   ()
   (+
    ;; string _directory
    4 (length _directory)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _directory
       (write-long (length _directory) s) (princ _directory s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _directory
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _directory (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_navigation_msgs::SaveMapResponse
  :super ros::object
  :slots (_success _name _full_path _message ))

(defmethod pal_navigation_msgs::SaveMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:name __name) "")
    ((:full_path __full_path) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _name (string __name))
   (setq _full_path (string __full_path))
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:full_path
   (&optional __full_path)
   (if __full_path (setq _full_path __full_path)) _full_path)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _name
    4 (length _name)
    ;; string _full_path
    4 (length _full_path)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _full_path
       (write-long (length _full_path) s) (princ _full_path s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _full_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _full_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_navigation_msgs::SaveMap
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::SaveMap :md5sum-) "260d196a7224e31492bb7fab504ab6c1")
(setf (get pal_navigation_msgs::SaveMap :datatype-) "pal_navigation_msgs/SaveMap")
(setf (get pal_navigation_msgs::SaveMap :request) pal_navigation_msgs::SaveMapRequest)
(setf (get pal_navigation_msgs::SaveMap :response) pal_navigation_msgs::SaveMapResponse)

(defmethod pal_navigation_msgs::SaveMapRequest
  (:response () (instance pal_navigation_msgs::SaveMapResponse :init)))

(setf (get pal_navigation_msgs::SaveMapRequest :md5sum-) "260d196a7224e31492bb7fab504ab6c1")
(setf (get pal_navigation_msgs::SaveMapRequest :datatype-) "pal_navigation_msgs/SaveMapRequest")
(setf (get pal_navigation_msgs::SaveMapRequest :definition-)
      "## Action for saving the current map (while in mapping mode).

string directory  # output directory, optional
---
bool success
string name
string full_path
string message  # error or other informative message

")

(setf (get pal_navigation_msgs::SaveMapResponse :md5sum-) "260d196a7224e31492bb7fab504ab6c1")
(setf (get pal_navigation_msgs::SaveMapResponse :datatype-) "pal_navigation_msgs/SaveMapResponse")
(setf (get pal_navigation_msgs::SaveMapResponse :definition-)
      "## Action for saving the current map (while in mapping mode).

string directory  # output directory, optional
---
bool success
string name
string full_path
string message  # error or other informative message

")



(provide :pal_navigation_msgs/SaveMap "260d196a7224e31492bb7fab504ab6c1")


