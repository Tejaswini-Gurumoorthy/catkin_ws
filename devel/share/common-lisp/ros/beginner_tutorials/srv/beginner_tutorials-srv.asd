
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "AreaRect" :depends-on ("_package_AreaRect"))
    (:file "_package_AreaRect" :depends-on ("_package"))
  ))