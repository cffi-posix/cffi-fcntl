;;
;;  cffi-fcntl  -  Common Lisp wrapper for fcntl.h
;;
;;  Copyright 2017 Thomas de Grivel <thoxdg@gmail.com>
;;
;;  Permission to use, copy, modify, and distribute this software for any
;;  purpose with or without fee is hereby granted, provided that the above
;;  copyright notice and this permission notice appear in all copies.
;;
;;  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
;;  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
;;  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
;;  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
;;  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
;;  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
;;  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
;;

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

(defun getfl (fd)
  (c-fcntl fd +f-getfl+))

(defun setfl (fd flags)
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
