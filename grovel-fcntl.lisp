
(in-package :cffi-fcntl)

(include "fcntl.h")

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
