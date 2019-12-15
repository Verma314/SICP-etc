(define (largest x y z)
        (cond  
          ( (and (< x y ) 
                 (< x z ))
            (+ (* y y) (* z z ) )     
          )

          ( (and (< y x)
                 (< y z))
            (+ (* x x) (* z z))
          )

          ( (and (< z x)
                 (< z y ))
            (+ (* x x) (* y y ))
          )
        )
)


(print (largest 4 3 7))
(print ( largest 1 2 3))
