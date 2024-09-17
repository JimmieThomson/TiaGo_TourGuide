;; Auto-generated. Do not edit!


(when (boundp 'pal_behaviour_msgs::BehaviourEvent)
  (if (not (find-package "PAL_BEHAVIOUR_MSGS"))
    (make-package "PAL_BEHAVIOUR_MSGS"))
  (shadow 'BehaviourEvent (find-package "PAL_BEHAVIOUR_MSGS")))
(unless (find-package "PAL_BEHAVIOUR_MSGS::BEHAVIOUREVENT")
  (make-package "PAL_BEHAVIOUR_MSGS::BEHAVIOUREVENT"))
(unless (find-package "PAL_BEHAVIOUR_MSGS::BEHAVIOUREVENTREQUEST")
  (make-package "PAL_BEHAVIOUR_MSGS::BEHAVIOUREVENTREQUEST"))
(unless (find-package "PAL_BEHAVIOUR_MSGS::BEHAVIOUREVENTRESPONSE")
  (make-package "PAL_BEHAVIOUR_MSGS::BEHAVIOUREVENTRESPONSE"))

(in-package "ROS")





(defclass pal_behaviour_msgs::BehaviourEventRequest
  :super ros::object
  :slots (_name _arguments ))

(defmethod pal_behaviour_msgs::BehaviourEventRequest
  (:init
   (&key
    ((:name __name) "")
    ((:arguments __arguments) ())
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _arguments __arguments)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:arguments
   (&rest __arguments)
   (if (keywordp (car __arguments))
       (send* _arguments __arguments)
     (progn
       (if __arguments (setq _arguments (car __arguments)))
       _arguments)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; pal_behaviour_msgs/BehaviourArgument[] _arguments
    (apply #'+ (send-all _arguments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; pal_behaviour_msgs/BehaviourArgument[] _arguments
     (write-long (length _arguments) s)
     (dolist (elem _arguments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; pal_behaviour_msgs/BehaviourArgument[] _arguments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arguments (let (r) (dotimes (i n) (push (instance pal_behaviour_msgs::BehaviourArgument :init) r)) r))
     (dolist (elem- _arguments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass pal_behaviour_msgs::BehaviourEventResponse
  :super ros::object
  :slots (_response ))

(defmethod pal_behaviour_msgs::BehaviourEventResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_behaviour_msgs::BehaviourEvent
  :super ros::object
  :slots ())

(setf (get pal_behaviour_msgs::BehaviourEvent :md5sum-) "557fe6cccaf8d1e8ba1469eb6ce305c9")
(setf (get pal_behaviour_msgs::BehaviourEvent :datatype-) "pal_behaviour_msgs/BehaviourEvent")
(setf (get pal_behaviour_msgs::BehaviourEvent :request) pal_behaviour_msgs::BehaviourEventRequest)
(setf (get pal_behaviour_msgs::BehaviourEvent :response) pal_behaviour_msgs::BehaviourEventResponse)

(defmethod pal_behaviour_msgs::BehaviourEventRequest
  (:response () (instance pal_behaviour_msgs::BehaviourEventResponse :init)))

(setf (get pal_behaviour_msgs::BehaviourEventRequest :md5sum-) "557fe6cccaf8d1e8ba1469eb6ce305c9")
(setf (get pal_behaviour_msgs::BehaviourEventRequest :datatype-) "pal_behaviour_msgs/BehaviourEventRequest")
(setf (get pal_behaviour_msgs::BehaviourEventRequest :definition-)
      "## SMC event

#Header header

string                                  name
pal_behaviour_msgs/BehaviourArgument[]  arguments

================================================================================
MSG: pal_behaviour_msgs/BehaviourArgument
## SMC event

#Header header

string           key
string           value

---
string                                  response


")

(setf (get pal_behaviour_msgs::BehaviourEventResponse :md5sum-) "557fe6cccaf8d1e8ba1469eb6ce305c9")
(setf (get pal_behaviour_msgs::BehaviourEventResponse :datatype-) "pal_behaviour_msgs/BehaviourEventResponse")
(setf (get pal_behaviour_msgs::BehaviourEventResponse :definition-)
      "## SMC event

#Header header

string                                  name
pal_behaviour_msgs/BehaviourArgument[]  arguments

================================================================================
MSG: pal_behaviour_msgs/BehaviourArgument
## SMC event

#Header header

string           key
string           value

---
string                                  response


")



(provide :pal_behaviour_msgs/BehaviourEvent "557fe6cccaf8d1e8ba1469eb6ce305c9")


