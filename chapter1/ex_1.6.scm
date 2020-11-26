#lang scheme

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Проблема данной процедуры заключается в том, что перед тем как вычислить итоговое значение
; конструкции (new-if then else) будут вычеслены и выражение then, и выражение else, 
; что нам в данной ситуаци не нужно

; Процедура sqrt-iter постоянно будет вызывать сама себя, не возвращая при этом никакого значения.
(define (square x)
  (* x x))
(define (sqrt-iter guess x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.0001))
  (define (improve guess x)
    (define (average x y)
      (/ (+ x y) 2))
    (average guess (/ guess x)))
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

