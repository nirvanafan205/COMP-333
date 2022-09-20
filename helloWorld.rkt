#lang racket

(define (rotate-list-left x)
(cond ((empty? x) x) ;checks if empty
      ((= (count-list-elements x) 1) x) ;checks for one element list
      (else (append (cdr x)(list(car x)))
            )
       )
 )
 
 (define (rotate-list-left-n x n)
  (cond ((= n 0) x) ; n is zero, return list
       (else (rotate-list-left-n (rotate-list-left x) (-n 1)) ;rotate list
  left
        )
      )
  )
  
  (define (count-list-elements x)
      (cond ((empty? x) 0) ; checks empty to return 0 elements
            (else (+ 1 (count-list-elements(cdr x))) ;adds 1
            )
          )
   )
   
 (define (list-element-n x n)
    (cond ((= n 0) (car x)) ;checks n to return
          (else (list-element-n (cdr x)(- n 1)) ;finds element
          )
       )
   )
   
  (define (list-minus-element-n x n)
      (cond ((= n 0) (cdr x)) ; checks n to return cdr
            (else (cons (car x)(car x)(list-minus-element-n (cdr x)(- n 1))) ;finds and removes
            )
        )
    )
    
  (define (rotate-list-right x)
    (define n(count-list-elements x))
      (cond ((empty? x) x)
            (else (cons (list-element-n x (-n 1))(list-minus-element-n x (-n 1)))
            )
        )
     )
     
  (define (rotate-list-right x)
      (define n(count-list-elements x))
        (cond ((empty? x) x)
              (else (cons (list-element-n x (-n 1))(list-minus-element-n x (-n 1)))
              )
        )
      ) 
      
  (define (reverse-list x)
    (cond ((empty? x) x)
        ((= (count-list-elements x) 1) x)
        (else (append (reverse-list (cdr x))(list(car x)))
        )
      )
    )
    
  (define (cons-to-all a x)
    (cond ((empty? x) x)
          (else (map (lambda (y)(cons `a y)) x))
           )
      )
    
