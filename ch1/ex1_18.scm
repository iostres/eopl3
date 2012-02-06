(define swapper
  (lambda (s1 s2 slist)
    (cond
      ((eq? '() slist) '())
      ((list? (car slist)) (cons (swapper s1 s2 (car slist)) (swapper s1 s2 (cdr slist)))) 
      (else
       (cons 
        (cond
          ((eq? (car slist) s1) s2)
          ((eq? (car slist) s2) s1)
          (else (car slist)))
        (swapper s1 s2 (cdr slist)))))))
