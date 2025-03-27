(define (pascal row col)
    (if (or (< col 3) (= row 1) (= row col))
        1
        (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col))))

(define (displayPascalRow n)
    (define (iter n i)
        (display (pascal n i))
        (display " ")
        (if (= i n)
            (newline)
            (iter n (+ i 1))))
    (iter n 1))

(define (printPascalTriangle n)
    (define (iter n i)
        (displayPascalRow i)
        (if (= i n)
            (newline)
            (iter n (+ i 1))))
    (iter n 1))

(printPascalTriangle 20)
