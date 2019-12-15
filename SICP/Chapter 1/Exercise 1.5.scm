(define (p) (p))

(define (test x y)
  (if (= x 0)
  0
  y))

(test 0 (p) ) 


; applicative order: the arguments get evaluated before we apply the procedure on them so (test 0 (p) ) gets evaluated to (test 0 (p) ) and hence ending in an infinite loop, crashing the interpreter.
; hence, scheme is applicative

; in the normal order, the procedure gets evaluated first
; (if (= x 0) 0 y )  which evaluates to ( if (= 0 0 ) 0 (p) ) which evauluates to 0