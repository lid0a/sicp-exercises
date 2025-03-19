(define (sqr x) (* x x))

(define (sum x y) (+ x y))

(define (sumLargest x y z) (
  cond ((and (<= x y) (<= x z)) (sum (sqr y) (sqr z)))
  ((and (<= y x) (<= y z)) (sum (sqr x) (sqr z)))
  (else (sum (sqr x) (sqr y)))
))

; Checks
(sumLargest 1 2 3)
(sumLargest 5 8 7)
(sumLargest 0 -8 -3)
