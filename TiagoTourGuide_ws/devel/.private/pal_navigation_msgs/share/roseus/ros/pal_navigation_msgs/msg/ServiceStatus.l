;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::ServiceStatus)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'ServiceStatus (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::SERVICESTATUS")
  (make-package "PAL_NAVIGATION_MSGS::SERVICESTATUS"))

(in-package "ROS")
;;//! \htmlinclude ServiceStatus.msg.html


(defclass pal_navigation_msgs::ServiceStatus
  :super ros::object
  :slots (_serviceName _is_running _update_frequency _latest_run_time _status ))

(defmethod pal_navigation_msgs::ServiceStatus
  (:init
   (&key
    ((:serviceName __serviceName) "")
    ((:is_running __is_running) nil)
    ((:update_frequency __update_frequency) 0.0)
    ((:latest_run_time __latest_run_time) (instance ros::time :init))
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _serviceName (string __serviceName))
   (setq _is_running __is_running)
   (setq _update_frequency (float __update_frequency))
   (setq _latest_run_time __latest_run_time)
   (setq _status __status)
   self)
  (:serviceName
   (&optional __serviceName)
   (if __serviceName (setq _serviceName __serviceName)) _serviceName)
  (:is_running
   (&optional (__is_running :null))
   (if (not (eq __is_running :null)) (setq _is_running __is_running)) _is_running)
  (:update_frequency
   (&optional __update_frequency)
   (if __update_frequency (setq _update_frequency __update_frequency)) _update_frequency)
  (:latest_run_time
   (&optional __latest_run_time)
   (if __latest_run_time (setq _latest_run_time __latest_run_time)) _latest_run_time)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _serviceName
    4 (length _serviceName)
    ;; bool _is_running
    1
    ;; float32 _update_frequency
    4
    ;; time _latest_run_time
    8
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _serviceName
       (write-long (length _serviceName) s) (princ _serviceName s)
     ;; bool _is_running
       (if _is_running (write-byte -1 s) (write-byte 0 s))
     ;; float32 _update_frequency
       (sys::poke _update_frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; time _latest_run_time
       (write-long (send _latest_run_time :sec) s) (write-long (send _latest_run_time :nsec) s)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _serviceName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serviceName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_running
     (setq _is_running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _update_frequency
     (setq _update_frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; time _latest_run_time
     (send _latest_run_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _latest_run_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_navigation_msgs::ServiceStatus :md5sum-) "b734cea5bf73c81e5fb0d99553451daa")
(setf (get pal_navigation_msgs::ServiceStatus :datatype-) "pal_navigation_msgs/ServiceStatus")
(setf (get pal_navigation_msgs::ServiceStatus :definition-)
      "# Navigation ServiceStatus msg 
string serviceName

#true if the service has been started
bool    is_running

#expected frequency of control loop (in hertz)
float32 update_frequency

#Timestamp of the latest loop cycle execution
time    latest_run_time

#true if the service is running and working fine
bool    status

")



(provide :pal_navigation_msgs/ServiceStatus "b734cea5bf73c81e5fb0d99553451daa")


