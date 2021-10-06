
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Eli" :depends-on ("_package_Eli"))
    (:file "_package_Eli" :depends-on ("_package"))
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
    (:file "hello" :depends-on ("_package_hello"))
    (:file "_package_hello" :depends-on ("_package"))
  ))