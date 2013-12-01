(defpackage "BASIC-BINARY-IPC.TESTS"
  (:use "COMMON-LISP"
	"LISP-UNIT"
	"BASIC-BINARY-IPC")
  (:import-from "BASIC-BINARY-IPC"
		#:posix-error))

#+windows
(defpackage "BASIC-BINARY-IPC.OVERLAPPED-IO.TESTS"
  (:use "COMMON-LISP"
	"LISP-UNIT"
	"BASIC-BINARY-IPC.OVERLAPPED-IO")
  (:import-from "BASIC-BINARY-IPC"
		#:system-function-error))
