#lang eopl

(define list-length
  (lambda (lst) 
    (if (null? lst)
        0
        (+ 1 (list-length (cdr lst)))
        )))

(define nth-elem
  (lambda (lst n)
    (if (eq? lst '())
        '()
        (if (zero? n)
            (car lst)
            (nth-elem (cdr lst) (- n 1))
        ))))

(define remove-first
  (lambda (sym lst)
    (if (eq? '() lst)
        lst
        (if (eq? (car lst) sym)
            (cdr lst)
            (cons (car lst) (remove-first sym (cdr lst)))
            ))))

(define remove
  (lambda (sym lst)
    (if (eq? '() lst)
        lst
        (if (eq? (car lst) sym)
            (remove sym (cdr lst))
            (cons (car lst) (remove sym (cdr lst)))
            ))))

(define duple
  (lambda (n x)
    (if (eq? n 0)
        '()
        (cons x (duple (- n 1) x)))))


(define invert
  (lambda (lst)
    (if (eq? lst '())
        '()
        (cons 
         (cons (car (cdr (car lst))) (cons (car (car lst)) '())) 
         (invert (cdr lst))))))

(define down
  (lambda (lst)
    (if (eq? '() lst)
        '()
        (cons (cons (car lst) '()) (down (cdr lst))))))

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

(define list-set 
  (lambda (lst n x)
    (if (eq? '() lst)
        '()
        (if (eq? n 0)
            (cons x (cdr lst))
            (cons (car lst) (list-set (cdr lst) (- n 1) x))
            ))))

(define count-occurrences 
  (lambda (s slist)
   (cond
     ((eq? '() slist) 0)
     ((eq? (car slist) s) (+ 1 (count-occurrences s (cdr slist))))
     ((list? (car slist)) (+ (count-occurrences s (car slist)) (count-occurrences s (cdr slist))))
     (else (count-occurrences s (cdr slist))))))

(define product
  (lambda (sos1 sos2)
    (cond
      ((eq? sos2 '()
            (product (car sos1) sos2)))
      (else 