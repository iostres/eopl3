(define down
  (lambda (lst)
    (if (eq? '() lst)
        '()
        (cons (cons (car lst) '()) (down (cdr lst))))))
