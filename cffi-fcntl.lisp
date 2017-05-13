
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
  (c-fcntl/int fd +f-setfl+ flags))

(defcfun ("open" c-open/2) :int
  (pathname :string)
  (flags :int))

(defcfun ("open" c-open/3) :int
  (pathname :string)
  (flags :int)
  (mode mode-t))

(defun open (pathname flags &optional mode)
  (let ((fd (if (= 0 (logand flags +o-creat+))
		(c-open/2 pathname flags)
		(c-open/3 pathname flags mode))))
    (when (< fd 0)
      (error-errno "open"))
    fd))

(defcfun ("openat" c-openat/3) :int
  (dirfd :int)
  (pathname :string)
  (flags :int))

(defcfun ("openat" c-openat/4) :int
  (dirfd :int)
  (pathname :string)
  (flags :int)
  (mode mode-t))

(defun openat (dirfd pathname flags &optional mode)
  (let ((fd (if (= 0 (logand flags +o-creat+))
		(c-openat/3 dirfd pathname flags)
		(c-openat/4 dirfd pathname flags mode))))
    (when (< fd 0)
      (error-errno "openat"))
    fd))

(defcfun ("creat" c-creat) :int
  (file :string)
  (mode mode-t))

(defun creat (file mode)
  (let ((fd (c-creat file mode)))
    (when (< fd 0)
      (error-errno "creat"))
    fd))
