
(in-package :common-lisp-user)

(defpackage :cffi-fcntl.system
  (:use :common-lisp :asdf))

(in-package :cffi-fcntl.system)

(defsystem "cffi-fcntl"
  :defsystem-depends-on ("cffi-grovel")
  :depends-on ("cffi" "cffi-errno")
  :components
  ((:file "cffi-fcntl-package")
   (:cffi-grovel-file "grovel-fcntl" :depends-on ("cffi-fcntl-package"))
   (:file "cffi-fcntl" :depends-on ("grovel-fcntl"))))
