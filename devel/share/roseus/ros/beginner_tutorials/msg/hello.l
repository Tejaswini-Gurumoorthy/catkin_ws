;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::hello)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'hello (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::HELLO")
  (make-package "BEGINNER_TUTORIALS::HELLO"))

(in-package "ROS")
;;//! \htmlinclude hello.msg.html


(defclass beginner_tutorials::hello
  :super ros::object
  :slots (_helloo ))

(defmethod beginner_tutorials::hello
  (:init
   (&key
    ((:helloo __helloo) "")
    )
   (send-super :init)
   (setq _helloo (string __helloo))
   self)
  (:helloo
   (&optional __helloo)
   (if __helloo (setq _helloo __helloo)) _helloo)
  (:serialization-length
   ()
   (+
    ;; string _helloo
    4 (length _helloo)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _helloo
       (write-long (length _helloo) s) (princ _helloo s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _helloo
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _helloo (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::hello :md5sum-) "79c61f44b47be5109868ef063497ba56")
(setf (get beginner_tutorials::hello :datatype-) "beginner_tutorials/hello")
(setf (get beginner_tutorials::hello :definition-)
      "string helloo
")



(provide :beginner_tutorials/hello "79c61f44b47be5109868ef063497ba56")


