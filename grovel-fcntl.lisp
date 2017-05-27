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

(include "fcntl.h")

(ctype mode-t "mode_t")
(ctype off-t "off_t")
(ctype off64-t "off64_t")
(ctype pid-t "pid_t")

(constant (+s-ifmt+ "S_IFMT"))
(constant (+s-ifdir+ "S_IFDIR"))
(constant (+s-ifchr+ "S_IFCHR"))
(constant (+s-ifblk+ "S_IFBLK"))
(constant (+s-ififo+ "S_IFIFO"))
(constant (+s-iflnk+ "S_IFLNK"))
(constant (+s-ifsock+ "S_IFSOCK"))
(constant (+s-isuid+ "S_ISUID"))
(constant (+s-isgid+ "S_ISGID"))
(constant (+s-irusr+ "S_IRUSR"))
(constant (+s-iwusr+ "S_IWUSR"))
(constant (+s-ixusr+ "S_IXUSR"))
(constant (+s-irwxu+ "S_IRWXU"))
(constant (+s-irgrp+ "S_IRGRP"))
(constant (+s-iwgrp+ "S_IWGRP"))
(constant (+s-ixgrp+ "S_IXGRP"))
(constant (+s-irwxg+ "S_IRWXG"))
(constant (+s-iroth+ "S_IROTH"))
(constant (+s-iwoth+ "S_IWOTH"))
(constant (+s-ixoth+ "S_IXOTH"))
(constant (+s-irwxo+ "S_IRWXO"))

(constant (+r-ok+ "R_OK"))
(constant (+w-ok+ "W_OK"))
(constant (+x-ok+ "X_OK"))
(constant (+f-ok+ "F_OK"))

(constant (+seek-set+ "SEEK_SET"))
(constant (+seek-cur+ "SEEK_CUR"))
(constant (+seek-end+ "SEEK_END"))

(constant (+o-rdonly+ "O_RDONLY"))
(constant (+o-wronly+ "O_WRONLY"))
(constant (+o-rdwr+ "O_RDWR"))
(constant (+o-creat+ "O_CREAT"))
(constant (+o-excl+ "O_EXCL"))
(constant (+o-noctty+ "O_NOCTTY"))
(constant (+o-trunc+ "O_TRUNC"))
(constant (+o-append+ "O_APPEND"))
(constant (+o-nonblock+ "O_NONBLOCK"))
(constant (+o-ndelay+ "O_NDELAY"))
(constant (+o-sync+ "O_SYNC"))
(constant (+o-sync+ "O_FSYNC"))
(constant (+o-async+ "O_ASYNC"))
(constant (+o-largefile+ "O_LARGEFILE"))
(constant (+o-directory+ "O_DIRECTORY"))
(constant (+o-nofollow+ "O_NOFOLLOW"))
(constant (+o-cloexec+ "O_CLOEXEC"))
;(constant (+o-direct+ "O_DIRECT"))
;(constant (+o-noatime+ "O_NOATIME"))
;(constant (+o-path+ "O_PATH"))
(constant (+o-dsync+ "O_DSYNC"))
;(constant (+o-tmpfile+ "O_TMPFILE"))

(constant (+f-getlk+ "F_GETLK"))
(constant (+f-setlk+ "F_SETLK"))
(constant (+f-setlkw+ "F_SETLKW"))
(constant (+f-getlk64+ "F_GETLK64"))
(constant (+f-setlk64+ "F_SETLK64"))
(constant (+f-setlkw64+ "F_SETLKW64"))

(constant (+f-dupfd+ "F_DUPFD"))
(constant (+f-getfd+ "F_GETFD"))
(constant (+f-setfd+ "F_SETFD"))

(constant (+f-getfl+ "F_GETFL"))
(constant (+f-setfl+ "F_SETFL"))

(constant (+f-setown+ "F_SETOWN"))
(constant (+f-getown+ "F_GETOWN"))

;(constant (+f-setsig+ "F_SETSIG"))
;(constant (+f-getsig+ "F_GETSIG"))

;(constant (+f-setown-ex+ "F_SETOWN_EX"))
;(constant (+f-getown-ex+ "F_GETOWN_EX"))

;(constant (+f-setlease+ "F_SETLEASE"))
;(constant (+f-getlease+ "F_GETLEASE"))
;(constant (+f-notify+ "F_NOTIFY"))
;(constant (+f-setpipe-sz+ "F_SETPIPE_SZ"))
;(constant (+f-getpipe-sz+ "F_GETPIPE_SZ"))

(constant (+f-dupfd-cloexec+ "F_DUPFD_CLOEXEC"))

;(constant (+f-cloexec+ "F_CLOEXEC"))

(constant (+f-rdlck+ "F_RDLCK"))
(constant (+f-wrlck+ "F_WRLCK"))
(constant (+f-unlck+ "F_UNLCK"))

(constant (+f-exlck+ "F_EXLCK"))
(constant (+f-shlck+ "F_SHLCK"))

(constant (+lock-sh+ "LOCK_SH"))
(constant (+lock-ex+ "LOCK_EX"))
(constant (+lock-nb+ "LOCK_NB"))
(constant (+lock-un+ "LOCK_UN"))

;(constant (+lock-mand+ "LOCK_MAND"))
;(constant (+lock-read+ "LOCK_READ"))
;(constant (+lock-write+ "LOCK_WRITE"))
;(constant (+lock-rw+ "LOCK_RW"))

;(constant (+dn-access+ "DN_ACCESS"))
;(constant (+dn-modify+ "DN_MODIFY"))
;(constant (+dn-create+ "DN_CREATE"))
;(constant (+dn-delete+ "DN_DELETE"))
;(constant (+dn-rename+ "DN_RENAME"))
;(constant (+dn-attrib+ "DN_ATTRIB"))
;(constant (+dn-multishot+ "DN_MULTISHOT"))

(constant (+posix-fadv-normal+ "POSIX_FADV_NORMAL"))
(constant (+posix-fadv-random+ "POSIX_FADV_RANDOM"))
(constant (+posix-fadv-sequential+ "POSIX_FADV_SEQUENTIAL"))
(constant (+posix-fadv-willneed+ "POSIX_FADV_WILLNEED"))
(constant (+posix-fadv-dontneed+ "POSIX_FADV_DONTNEED"))
(constant (+posix-fadv-noreuse+ "POSIX_FADV_NOREUSE"))

;(constant (+sync-file-range-wait-before+ "SYNC_FILE_RANGE_WAIT_BEFORE"))
;(constant (+sync-file-range-write+ "SYNC_FILE_RANGE_WRITE"))
;(constant (+sync-file-range-wait-after+ "SYNC_FILE_RANGE_WAIT_AFTER"))

;(constant (+splice-f-move+ "SPLICE_F_MOVE"))
;(constant (+splice-f-nonblock+ "SPLICE_F_NONBLOCK"))
;(constant (+splice-f-more+ "SPLICE_F_MORE"))
;(constant (+splice-f-gift+ "SPLICE_F_GIFT"))

;(constant (+falloc-fl-keep-size+ "FALLOC_FL_KEEP_SIZE"))
;(constant (+falloc-fl-punch-hole+ "FALLOC_FL_PUNCH_HOLE"))
;(constant (+falloc-fl-collapse-range+ "FALLOC_FL_COLLAPSE_RANGE"))
;(constant (+falloc-fl-zero-range+ "FALLOC_FL_ZERO_RANGE"))

;(constant (+max-handle-sz+ "MAX_HANDLE_SZ"))
