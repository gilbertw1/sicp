;; Evaluating the test expression using applicative order evalution will result
;; in an infinite recursive loop as the interpreter continuously tries to evaluate
;; '(p)'.

;; Evaluating the test expression using normal order evaluation will result in a successful
;; answer of 0. The reason normal order successfuly evaluates the expression is because while
;; it expands the function call of '(p)' to '((p))' it never actually evaluates it. Instead,
;; the if predicate expression evaluates to true and 0 is returned.

