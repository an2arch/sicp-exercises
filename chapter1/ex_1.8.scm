#lang scheme

(define (cube-root x)
  (cube-iter 0.0 1.0 x))
(define (cube-iter guess-prev guess x)
  (if (good-enough? guess-prev guess)
      guess
      (cube-iter guess (improve guess x) x)))
(define (good-enough? guess-prev guess)
  (< (abs (- guess guess-prev)) 0.00001))
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))
(define (square x)
  (* x x))
