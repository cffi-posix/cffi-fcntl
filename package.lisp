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

(in-package :common-lisp)

(defpackage :cffi-fcntl
  (:nicknames :fcntl)
  (:use
   :cffi
   :common-lisp
   :errno)
  (:shadow
   #:open)
  (:export
   #:c-fcntl
   #:c-fcntl/int
   #:c-fcntl/pointer
   #:getfl
   #:setfl
   #:open
   #:openat
   #:creat
   #:+o-rdonly+
   #:+o-wronly+
   #:+o-rdwr+
   #:+o-creat+
   #:+o-excl+
   #:+o-noctty+
   #:+o-trunc+
   #:+o-append+
   #:+o-nonblock+
   #:+o-ndelay+
   #:+o-sync+
   #:+o-sync+
   #:+o-async+
   #:+o-largefile+
   #:+o-directory+
   #:+o-nofollow+
   #:+o-cloexec+
   #:+o-direct+
   #:+o-noatime+
   #:+o-path+
   #:+o-dsync+
   #:+o-tmpfile+
   #:+f-getlk+
   #:+f-setlk+
   #:+f-setlkw+
   #:+f-getlk64+
   #:+f-setlk64+
   #:+f-setlkw64+
   #:+f-dupfd+
   #:+f-getfd+
   #:+f-setfd+
   #:+f-getfl+
   #:+f-setfl+
   #:+f-setown+
   #:+f-getown+
   #:+f-setsig+
   #:+f-getsig+
   #:+f-setown-ex+
   #:+f-getown-ex+
   #:+f-setlease+
   #:+f-getlease+
   #:+f-notify+
   #:+f-setpipe-sz+
   #:+f-getpipe-sz+
   #:+f-dupfd-cloexec+
   #:+f-cloexec+
   #:+f-rdlck+
   #:+f-wrlck+
   #:+f-unlck+
   #:+f-exlck+
   #:+f-shlck+
   #:+lock-sh+
   #:+lock-ex+
   #:+lock-nb+
   #:+lock-un+
   #:+lock-mand+
   #:+lock-read+
   #:+lock-write+
   #:+lock-rw+
   #:+dn-access+
   #:+dn-modify+
   #:+dn-create+
   #:+dn-delete+
   #:+dn-rename+
   #:+dn-attrib+
   #:+dn-multishot+
   #:+posix-fadv-normal+
   #:+posix-fadv-random+
   #:+posix-fadv-sequential+
   #:+posix-fadv-willneed+
   #:+posix-fadv-dontneed+
   #:+posix-fadv-noreuse+
   #:+sync-file-range-wait-before+
   #:+sync-file-range-write+
   #:+sync-file-range-wait-after+
   #:+splice-f-move+
   #:+splice-f-nonblock+
   #:+splice-f-more+
   #:+splice-f-gift+
   #:+falloc-fl-keep-size+
   #:+falloc-fl-punch-hole+
   #:+falloc-fl-collapse-range+
   #:+falloc-fl-zero-range+
   #:+max-handle-sz+))
