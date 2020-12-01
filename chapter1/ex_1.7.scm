#lang scheme

(define (sqrt x)
  (sqrt-iter 1.0 1.0 x))
(define (sqrt-iter guess-prev guess x)
  (if (good-enough? guess-prev guess)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))
(define (good-enough? guess-prev guess)
  (< (abs (- guess guess-prev)) 0.0001))