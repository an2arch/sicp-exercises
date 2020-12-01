#lang scheme

(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))
(define (sqrt-iter guess-prev guess x)
  (if (good-enough? guess-prev guess)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))
(define (good-enough? guess-prev guess)
  (< (abs (- guess guess-prev)) 0.00001))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))