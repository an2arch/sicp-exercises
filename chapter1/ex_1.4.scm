(define (a-plus-abs-b a b) 
  ((if (> b 0) + -) a b))

; При вызове процедуры a-plus-abs-b сначала вычисляются аргументы a и b.
; Далее соответствующие значения аргументов подставляются на соответствующие места в теле процедуры.
; Если b > 0, то результат выполнения - сумма a и b
; Иначе результат - разность a и b
; (a-plus-abs-b a b) ~ (+ a (abs b))
;                        (a + |b|)

; When a-plus-abs-b is called, the arguments a and b are evalueted first.
; Further, the corresponding values of the arguments are substituted in the appropriate places in the definition of the procedure.
; If b > 0 then the result of execution is the sum of a and b
; Otherwise the result is the difference between a and b.
;         (a-plus-abs-b a b) ~ (+ a (abs b))
;                                (a + |b|)
