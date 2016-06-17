

(print "alo")

(+ 137 349)

(+ 2.7 10)

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

(define (square x)
  (* x x))

(square (square 21))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 4)
(abs 0)
(abs -39)
