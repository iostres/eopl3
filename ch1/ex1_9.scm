(define remove
  (lambda (sym lst)
    (if (eq? '() lst)
        lst
        (if (eq? (car lst) sym)
            (remove sym (cdr lst))
            (cons (car lst) (remove sym (cdr lst)))
            ))))
