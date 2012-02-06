(define count-occurrences 
  (lambda (s slist)
   (cond
     ((eq? '() slist) 0)
     ((eq? (car slist) s) (+ 1 (count-occurrences s (cdr slist))))
     ((list? (car slist)) (+ (count-occurrences s (car slist)) (count-occurrences s (cdr slist))))
     (else (count-occurrences s (cdr slist))))))

