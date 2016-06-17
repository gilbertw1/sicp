(define (smallest? a b c)
  (and (< a b) (< a c)))

(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (sum-of-squares-larger x y z)
  (cond ((smallest? x y z) (sum-of-squares y z))
         ((smallest? y x z) (sum-of-squares x z))
         (else (sum-of-squares x y))))

(= (sum-of-squares 8 7)
   (sum-of-squares-larger 8 4 7))

(= (sum-of-squares 4 5)
   (sum-of-squares-larger 5 4 2))

(= (sum-of-squares 3 2)
   (sum-of-squares-larger 1 2 3))
