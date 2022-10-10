#lang racket

(struct node (value count left right) #:mutable #:transparent)

(define bn05 (node 10 1 null null))
(define bn04 (node 50 1 null bn05))

(define (bst? n)
  (cond
    ((empty? n) #t) ;check if its empty

    ((not (node? n)) #f) ;checks if a node

    ((and (empty? (node-left n)) ;checks to make sure node has no children
          (empty? (node-right n)) #t) ;if no children it's returns true

     ((and (empty? (node-right n))
           (< (node-value (node-left n))
              (node-value n))
           (bst? (node-left n) ) )
      ) ) ) )
         
      
          
          

   ; ((and (empty? (node-right n))
    ;      (< (node-value (node-left n))
     ;        (node-value n))))
     ;      (bst? (node-left n) )
          


(bst? bn05) ; #t
(bst? bn04) ;f

;;else if n has one child on the left, then result is
;;n.left.value < n.value AND bst?(n.left) is true
