;; Auto-generated. Do not edit!


(when (boundp 'move_printer::TubeDim)
  (if (not (find-package "MOVE_PRINTER"))
    (make-package "MOVE_PRINTER"))
  (shadow 'TubeDim (find-package "MOVE_PRINTER")))
(unless (find-package "MOVE_PRINTER::TUBEDIM")
  (make-package "MOVE_PRINTER::TUBEDIM"))
(unless (find-package "MOVE_PRINTER::TUBEDIMREQUEST")
  (make-package "MOVE_PRINTER::TUBEDIMREQUEST"))
(unless (find-package "MOVE_PRINTER::TUBEDIMRESPONSE")
  (make-package "MOVE_PRINTER::TUBEDIMRESPONSE"))

(in-package "ROS")





(defclass move_printer::TubeDimRequest
  :super ros::object
  :slots (_diameter _height ))

(defmethod move_printer::TubeDimRequest
  (:init
   (&key
    ((:diameter __diameter) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _diameter (float __diameter))
   (setq _height (float __height))
   self)
  (:diameter
   (&optional __diameter)
   (if __diameter (setq _diameter __diameter)) _diameter)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float64 _diameter
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _diameter
       (sys::poke _diameter (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _diameter
     (setq _diameter (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass move_printer::TubeDimResponse
  :super ros::object
  :slots (_finished ))

(defmethod move_printer::TubeDimResponse
  (:init
   (&key
    ((:finished __finished) nil)
    )
   (send-super :init)
   (setq _finished __finished)
   self)
  (:finished
   (&optional __finished)
   (if __finished (setq _finished __finished)) _finished)
  (:serialization-length
   ()
   (+
    ;; bool _finished
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _finished
       (if _finished (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass move_printer::TubeDim
  :super ros::object
  :slots ())

(setf (get move_printer::TubeDim :md5sum-) "c678a14ef9d5b45fe26fb9bff2534273")
(setf (get move_printer::TubeDim :datatype-) "move_printer/TubeDim")
(setf (get move_printer::TubeDim :request) move_printer::TubeDimRequest)
(setf (get move_printer::TubeDim :response) move_printer::TubeDimResponse)

(defmethod move_printer::TubeDimRequest
  (:response () (instance move_printer::TubeDimResponse :init)))

(setf (get move_printer::TubeDimRequest :md5sum-) "c678a14ef9d5b45fe26fb9bff2534273")
(setf (get move_printer::TubeDimRequest :datatype-) "move_printer/TubeDimRequest")
(setf (get move_printer::TubeDimRequest :definition-)
      "float64 diameter
float64 height
---
bool finished
")

(setf (get move_printer::TubeDimResponse :md5sum-) "c678a14ef9d5b45fe26fb9bff2534273")
(setf (get move_printer::TubeDimResponse :datatype-) "move_printer/TubeDimResponse")
(setf (get move_printer::TubeDimResponse :definition-)
      "float64 diameter
float64 height
---
bool finished
")



(provide :move_printer/TubeDim "c678a14ef9d5b45fe26fb9bff2534273")


