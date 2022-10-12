#lang racket

(struct node (value count left right) #:mutable #:transparent)

(define n10 (node 70 1 null null)) 
(define n09 (node 65 1 null n10)) 
(define n08 (node 30 1 null null)) 
(define n07 (node 87 1 null null)) 
(define n06 (node 60 1 null n09)) 
(define n05 (node 37 1 n08 null)) 
(define n04 (node 57 1 null null)) 
(define n03 (node 75 1 n06 n07)) 
(define n02 (node 25 1 n04 n05)) 
(define n01 (node 50 1 n02 n03)) 


(define (bst? n)
  (cond
    
    ((empty? n) #t) ;check if its empty

    ((not (node? n)) #f) ;checks if a node struct

    ((and (empty? (node-left n)) ;checks to make sure node has no children
          (empty? (node-right n)) ) #t) ;if no children it's returns true

     ((and (empty? (node-right n)) ;checks no right node
           (and (bst? (node-left n) )
           (< (node-value (node-left n) )
              (node-value n)) )
         
           ) #t)

     ((and (empty? (node-left n))
           (and (bst? (node-right n) )
           (> (node-value (node-right n ) )
              (node-value n)) )
           ) #t)

     
     ((and (and (bst? (node-left n) )
           (< (node-value (node-left n) )
              (node-value n)) )
           
           (and (bst? (node-right n) )
           (> (node-value (node-right n ) )
              (node-value n)) )
           ) #t

           

     ;and check-L < current-N
     ;and bst? check-L 

     )))
