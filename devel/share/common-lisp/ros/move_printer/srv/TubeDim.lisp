; Auto-generated. Do not edit!


(cl:in-package move_printer-srv)


;//! \htmlinclude TubeDim-request.msg.html

(cl:defclass <TubeDim-request> (roslisp-msg-protocol:ros-message)
  ((diameter
    :reader diameter
    :initarg :diameter
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass TubeDim-request (<TubeDim-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TubeDim-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TubeDim-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_printer-srv:<TubeDim-request> is deprecated: use move_printer-srv:TubeDim-request instead.")))

(cl:ensure-generic-function 'diameter-val :lambda-list '(m))
(cl:defmethod diameter-val ((m <TubeDim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_printer-srv:diameter-val is deprecated.  Use move_printer-srv:diameter instead.")
  (diameter m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <TubeDim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_printer-srv:height-val is deprecated.  Use move_printer-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TubeDim-request>) ostream)
  "Serializes a message object of type '<TubeDim-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'diameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TubeDim-request>) istream)
  "Deserializes a message object of type '<TubeDim-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diameter) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TubeDim-request>)))
  "Returns string type for a service object of type '<TubeDim-request>"
  "move_printer/TubeDimRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TubeDim-request)))
  "Returns string type for a service object of type 'TubeDim-request"
  "move_printer/TubeDimRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TubeDim-request>)))
  "Returns md5sum for a message object of type '<TubeDim-request>"
  "c678a14ef9d5b45fe26fb9bff2534273")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TubeDim-request)))
  "Returns md5sum for a message object of type 'TubeDim-request"
  "c678a14ef9d5b45fe26fb9bff2534273")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TubeDim-request>)))
  "Returns full string definition for message of type '<TubeDim-request>"
  (cl:format cl:nil "float64 diameter~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TubeDim-request)))
  "Returns full string definition for message of type 'TubeDim-request"
  (cl:format cl:nil "float64 diameter~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TubeDim-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TubeDim-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TubeDim-request
    (cl:cons ':diameter (diameter msg))
    (cl:cons ':height (height msg))
))
;//! \htmlinclude TubeDim-response.msg.html

(cl:defclass <TubeDim-response> (roslisp-msg-protocol:ros-message)
  ((finished
    :reader finished
    :initarg :finished
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TubeDim-response (<TubeDim-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TubeDim-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TubeDim-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_printer-srv:<TubeDim-response> is deprecated: use move_printer-srv:TubeDim-response instead.")))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <TubeDim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_printer-srv:finished-val is deprecated.  Use move_printer-srv:finished instead.")
  (finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TubeDim-response>) ostream)
  "Serializes a message object of type '<TubeDim-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finished) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TubeDim-response>) istream)
  "Deserializes a message object of type '<TubeDim-response>"
    (cl:setf (cl:slot-value msg 'finished) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TubeDim-response>)))
  "Returns string type for a service object of type '<TubeDim-response>"
  "move_printer/TubeDimResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TubeDim-response)))
  "Returns string type for a service object of type 'TubeDim-response"
  "move_printer/TubeDimResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TubeDim-response>)))
  "Returns md5sum for a message object of type '<TubeDim-response>"
  "c678a14ef9d5b45fe26fb9bff2534273")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TubeDim-response)))
  "Returns md5sum for a message object of type 'TubeDim-response"
  "c678a14ef9d5b45fe26fb9bff2534273")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TubeDim-response>)))
  "Returns full string definition for message of type '<TubeDim-response>"
  (cl:format cl:nil "bool finished~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TubeDim-response)))
  "Returns full string definition for message of type 'TubeDim-response"
  (cl:format cl:nil "bool finished~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TubeDim-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TubeDim-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TubeDim-response
    (cl:cons ':finished (finished msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TubeDim)))
  'TubeDim-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TubeDim)))
  'TubeDim-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TubeDim)))
  "Returns string type for a service object of type '<TubeDim>"
  "move_printer/TubeDim")