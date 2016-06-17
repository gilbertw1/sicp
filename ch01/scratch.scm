

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


(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrtt x)
  (sqrt-iter 1.0 x))

(sqrtt 100000001)
(sqrt 2)
