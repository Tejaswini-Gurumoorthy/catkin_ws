;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::AreaRect)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'AreaRect (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::AREARECT")
  (make-package "BEGINNER_TUTORIALS::AREARECT"))
(unless (find-package "BEGINNER_TUTORIALS::AREARECTREQUEST")
  (make-package "BEGINNER_TUTORIALS::AREARECTREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::AREARECTRESPONSE")
  (make-package "BEGINNER_TUTORIALS::AREARECTRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::AreaRectRequest
  :super ros::object
  :slots (_a _b ))

(defmethod beginner_tutorials::AreaRectRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ;; float32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass beginner_tutorials::AreaRectResponse
  :super ros::object
  :slots (_area ))

(defmethod beginner_tutorials::AreaRectResponse
  (:init
   (&key
    ((:area __area) 0.0)
    )
   (send-super :init)
   (setq _area (float __area))
   self)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; float32 _area
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _area
       (sys::poke _area (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _area
     (setq _area (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass beginner_tutorials::AreaRect
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::AreaRect :md5sum-) "776367f335c9bf437d261b53f116f71c")
(setf (get beginner_tutorials::AreaRect :datatype-) "beginner_tutorials/AreaRect")
(setf (get beginner_tutorials::AreaRect :request) beginner_tutorials::AreaRectRequest)
(setf (get beginner_tutorials::AreaRect :response) beginner_tutorials::AreaRectResponse)

(defmethod beginner_tutorials::AreaRectRequest
  (:response () (instance beginner_tutorials::AreaRectResponse :init)))

(setf (get beginner_tutorials::AreaRectRequest :md5sum-) "776367f335c9bf437d261b53f116f71c")
(setf (get beginner_tutorials::AreaRectRequest :datatype-) "beginner_tutorials/AreaRectRequest")
(setf (get beginner_tutorials::AreaRectRequest :definition-)
      "float32 a
float32 b
---
float32 area
")

(setf (get beginner_tutorials::AreaRectResponse :md5sum-) "776367f335c9bf437d261b53f116f71c")
(setf (get beginner_tutorials::AreaRectResponse :datatype-) "beginner_tutorials/AreaRectResponse")
(setf (get beginner_tutorials::AreaRectResponse :definition-)
      "float32 a
float32 b
---
float32 area
")



(provide :beginner_tutorials/AreaRect "776367f335c9bf437d261b53f116f71c")


