
(cl:in-package :asdf)

(defsystem "move_printer-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TubeDim" :depends-on ("_package_TubeDim"))
    (:file "_package_TubeDim" :depends-on ("_package"))
  ))