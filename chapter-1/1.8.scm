(define (sqr x) (* x x))

(define (cube x) (* x (sqr x)))

(define (abs x) (cond ((<= x 0) (- x)) (else x)))

(define (goodEnough guess x) (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x) (/ (+ (/ x (sqr guess)) (* 2 guess)) 3))

(define (cbrtIter guess x)
  (if (goodEnough guess x)
      guess
      (cbrtIter (improve guess x) x)))

(define (cbrt x) (cbrtIter 1 x))
