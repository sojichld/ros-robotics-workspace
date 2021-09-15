;; Auto-generated. Do not edit!


(when (boundp 'pcr::MyMsg)
  (if (not (find-package "PCR"))
    (make-package "PCR"))
  (shadow 'MyMsg (find-package "PCR")))
(unless (find-package "PCR::MYMSG")
  (make-package "PCR::MYMSG"))

(in-package "ROS")
;;//! \htmlinclude MyMsg.msg.html


(defclass pcr::MyMsg
  :super ros::object
  :slots (_message _num ))

(defmethod pcr::MyMsg
  (:init
   (&key
    ((:message __message) "")
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _num (round __num))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; int64 _num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get pcr::MyMsg :md5sum-) "055a6f49e56601a803d9072993ade75d")
(setf (get pcr::MyMsg :datatype-) "pcr/MyMsg")
(setf (get pcr::MyMsg :definition-)
      "string message
int64 num

")



(provide :pcr/MyMsg "055a6f49e56601a803d9072993ade75d")


