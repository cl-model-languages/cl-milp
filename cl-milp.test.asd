#|
  This file is a part of cl-milp project.
  Copyright (c) 2017 Masataro Asai (guicho2.71828@gmail.com)
|#


(in-package :cl-user)
(defpackage cl-milp.test-asd
  (:use :cl :asdf))
(in-package :cl-milp.test-asd)


(defsystem cl-milp.test
  :author "Masataro Asai"
  :mailto "guicho2.71828@gmail.com"
  :description "Test system of cl-milp"
  :license "LLGPL"
  :depends-on (:cl-milp
               :fiveam)
  :components ((:module "t"
                :components
                ((:file "package"))))
  :perform (test-op :after (op c) (eval
 (read-from-string
  "(5am:run! :cl-milp)"))
))
