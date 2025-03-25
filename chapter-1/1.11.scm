(define (fRecursive n)
    (if (< n 3)
        n
        (+ (fRecursive (- n 1)) (* 2 (fRecursive (- n 2))) (* 3 (fRecursive (- n 3))))))

(define (fIterative n)
    (define (for n i f0 f1 f2 result)
        (define (calc f0 f1 f2) (+ f2 (* 2 f1) (* 3 f0)))
        (define fNext (calc f0 f1 f2))
        (if (< n 3)
            n
            (if (> i n)
                result
                (for n (+ i 1) f1 f2 fNext fNext))))
    (for n 3 0 1 2 0))
