(define duple
  (lambda (n x)
    (if (eq? n 0)
        '()
        (cons x (duple (- n 1) x)))))
