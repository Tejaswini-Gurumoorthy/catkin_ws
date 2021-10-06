;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Eli)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Eli (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ELI")
  (make-package "BEGINNER_TUTORIALS::ELI"))

(in-package "ROS")
;;//! \htmlinclude Eli.msg.html


(defclass beginner_tutorials::Eli
  :super ros::object
  :slots (_name _eli ))

(defmethod beginner_tutorials::Eli
  (:init
   (&key
    ((:name __name) "")
    ((:eli __eli) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _eli (string __eli))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:eli
   (&optional __eli)
   (if __eli (setq _eli __eli)) _eli)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _eli
    4 (length _eli)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _eli
       (write-long (length _eli) s) (princ _eli s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _eli
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _eli (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::Eli :md5sum-) "ec098ac8c9a478cf0c042931a2dbdf90")
(setf (get beginner_tutorials::Eli :datatype-) "beginner_tutorials/Eli")
(setf (get beginner_tutorials::Eli :definition-)
      "string name
string eli
")



(provide :beginner_tutorials/Eli "ec098ac8c9a478cf0c042931a2dbdf90")


