
(in-package :cl-user)
(defpackage cl-milp-asd
  (:use :cl :asdf))
(in-package :cl-milp-asd)


(defsystem cl-milp
  :version "0.1"
  :author "Masataro Asai"
  :mailto "guicho2.71828@gmail.com"
  :license "LLGPL"
  :depends-on (:trivia :alexandria :iterate)
  :pathname "src"
  :components ((:file "package"))
  :description "Common Interface to the MILP solvers (e.g. CPLEX, Globi, GLPK, LP_SOLVE) from Common Lisp"
  :in-order-to ((test-op (test-op :cl-milp.test))))
