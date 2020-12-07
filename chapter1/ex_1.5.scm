(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; Нормальный порядок вычислений:
;     При вызове процедуры test будут вычислены её аргументы.
;     С нулём всё понятно. При попытке вычислить p произойдёт бесконечный вызов самой себя.
;     Выполнение данной программы никогда не завершится (в теории).
; Аппликативный порядок вычислений:
;     Предварительных вычислений аргументов происходить не будет.
;     Данные выражения просто подставятся на свои места в определении процедуры.
;     То есть, как видно из определения процедуры, выражение (p) не будет вычисляться, так как оно не пригодилось в вычислениях

; Normal order of computation:
;     When calling procedure test, first of all, its argument will be calculated
;     When trying to calculate (p), an endless call to itself will occur.
;     In theory, this procedure will never complete.

; Applicative order of computation:
;     Arguments will not be evaluated, but simply substituted in their place in the procedure definition.
;     So expression (p) will never be computed, since it not needed in calculations
