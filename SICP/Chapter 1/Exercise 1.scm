( define (sqrt-iter guess x)
  (if  (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
                x)
  )
)

(define (improve guess x )
  (average guess (/ x guess)
  )
)

(define (average x y)
  (/ (+ x y) 2)
)

(define (good-enough? guess x )
  (< (abs (- (* guess guess) x))
  0.001)
)

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)


; since Scheme is applicative
; and new-if is a function which Scheme evaluates
; it expands all the arguments
; one of the arguments is a function that is recursive
; so it keeps evaluating and goes into an infinite loop