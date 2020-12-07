(define (sum_of_squares a b c) 
        (cond ((and (< a b) (< a c)) (+ (* b b) (* c c)))
              ((and (< b a) (< b c)) (+ (* a a) (* c c)))
              ( else (+ (* a a) (* b b)))))
