(define invert
  (lambda (lst)
    (if (eq? lst '())
        '()
        (cons 
         (cons (car (cdr (car lst))) (cons (car (car lst)) '())) 
         (invert (cdr lst))))))
