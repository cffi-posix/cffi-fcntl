
(in-package :cffi-fcntl)

(defcfun ("fcntl" c-fcntl) :int
  (fd :int)
  (cmd :int))

(defcfun ("fcntl" c-fcntl/int) :int
  (fd :int)
  (cmd :int)
  (arg :int))

(defcfun ("fcntl" c-fcntl/pointer) :int
  (fd :int)
  (cmd :int)
  (arg :pointer))

(defun fcntl-getfl (fd)
  (c-fcntl fd +f-getfl+))

(defun fcntl-setfl (fd flags)
  (c-fcntl/int fd +f-getfl+ flags))
