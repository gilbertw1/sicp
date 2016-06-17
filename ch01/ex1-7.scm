;; When using the current 'good-enough?' test on small numbers, the result is
;; not very precise since the threshold we're using is going to be large
;; (sometimes larger than) in comparison to the square root number we are
;; trying to find.

;; When usin the current 'good-enough?' test on very large numbers, the lack of
;; precision will result in numbers that are incorrect by a difference as large as
;; or larger than the threshold we are using. Additionally, the amount of time it takes
;; to complete the calculation makes the solution impractical for large calculations.


(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? old-guess guess x)
  (< (abs (- (/ guess old-guess) 1)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter old-guess guess x)
  (if (good-enough? old-guess guess x)
      guess
      (sqrt-iter guess (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 (improve 1.0 x) x))

(sqrt 1000000000000000000000000000000)

;; This seems to work much better for small numbers, resulting in a much more accurate result,
;; as well as large numbers which complete in a timely manner
