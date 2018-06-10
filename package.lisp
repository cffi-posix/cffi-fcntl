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
   #:+dn-access+
   #:+dn-attrib+
   #:+dn-create+
   #:+dn-delete+
   #:+dn-modify+
   #:+dn-multishot+
   #:+dn-rename+
   #:+f-cloexec+
   #:+f-dupfd+
   #:+f-dupfd-cloexec+
   #:+f-exlck+
   #:+f-getfd+
   #:+f-getfl+
   #:+f-getlease+
   #:+f-getlk+
   #:+f-getlk64+
   #:+f-getown+
   #:+f-getown-ex+
   #:+f-getpipe-sz+
   #:+f-getsig+
   #:+f-notify+
   #:+f-rdlck+
   #:+f-setfd+
   #:+f-setfl+
   #:+f-setlease+
   #:+f-setlk+
   #:+f-setlk64+
   #:+f-setlkw+
   #:+f-setlkw64+
   #:+f-setown+
   #:+f-setown-ex+
   #:+f-setpipe-sz+
   #:+f-setsig+
   #:+f-shlck+
   #:+f-unlck+
   #:+f-wrlck+
   #:+falloc-fl-collapse-range+
   #:+falloc-fl-keep-size+
   #:+falloc-fl-punch-hole+
   #:+falloc-fl-zero-range+
   #:+lock-ex+
   #:+lock-mand+
   #:+lock-nb+
   #:+lock-read+
   #:+lock-rw+
   #:+lock-sh+
   #:+lock-un+
   #:+lock-write+
   #:+max-handle-sz+
   #:+o-append+
   #:+o-async+
   #:+o-cloexec+
   #:+o-creat+
   #:+o-direct+
   #:+o-directory+
   #:+o-dsync+
   #:+o-excl+
   #:+o-largefile+
   #:+o-ndelay+
   #:+o-noatime+
   #:+o-noctty+
   #:+o-nofollow+
   #:+o-nonblock+
   #:+o-path+
   #:+o-rdonly+
   #:+o-rdwr+
   #:+o-sync+
   #:+o-sync+
   #:+o-tmpfile+
   #:+o-trunc+
   #:+o-wronly+
   #:+posix-fadv-dontneed+
   #:+posix-fadv-noreuse+
   #:+posix-fadv-normal+
   #:+posix-fadv-random+
   #:+posix-fadv-sequential+
   #:+posix-fadv-willneed+
   #:+splice-f-gift+
   #:+splice-f-more+
   #:+splice-f-move+
   #:+splice-f-nonblock+
   #:+sync-file-range-wait-after+
   #:+sync-file-range-wait-before+
   #:+sync-file-range-write+
   #:c-fcntl
   #:c-fcntl/int
   #:c-fcntl/pointer
   #:creat
   #:getfl
   #:open
   #:openat
   #:setfl))
