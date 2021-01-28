(define (C n k)
  (cond ((or (= k 0) (= k n)) 1)
        (else (+ (C (- n 1) k) (C (- n 1) (- k 1))))))

(display (C 10 5)) ; 252
(newline)
