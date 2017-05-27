
(in-package :common-lisp-user)

(defpackage :cffi-fcntl.system
  (:use :common-lisp :asdf))

(in-package :cffi-fcntl.system)

(defsystem :cffi-fcntl
  :name "cffi-fcntl"
  :author "Thomas de Grivel <thoxdg@gmail.com>"
  :version "0.1"
  :description "Common Lisp wrapper for fcntl.h"
  :defsystem-depends-on ("cffi-grovel")
  :depends-on ("cffi" "cffi-errno")
  :components
  ((:file "package")
   (:cffi-grovel-file "grovel-fcntl" :depends-on ("package"))
   (:file "cffi-fcntl" :depends-on ("grovel-fcntl"))))
