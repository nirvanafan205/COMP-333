#lang racket

(struct node (value count left right) #:mutable #:transparent)

(define n10 (node 70 1 null null)) 
(define n09 (node 65 1 null n10)) 
(define n08 (node 30 1 null null)) 
(define n07 (node 87 1 null null)) 
(define n06 (node 60 1 null n09)) 
(define n05 (node 37 1 n08 null)) 
(define n04 (node 12 1 null null)) 
(define n03 (node 75 1 n06 n07)) 
(define n02 (node 25 1 n04 n05)) 
(define n01 (node 50 1 n02 n03))

(define (node-list-to-value-list x)
  (cond
    ((empty? x ) '() )
    
  (cons (node-value (car x) ) (node-list-to-value-list (cdr x)))
  
    ) )
