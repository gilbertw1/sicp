;; The 'if' special form has the logic built in to conditionally evaluate the expressions
;; in either branch, therefore it doesn't execute the recursive call to 'sqrt-iter' when the
;; guess is 'good enough'. However the new-if function does not have this property and will
;; evaluate both arguments, resulting in infinite recursive calls to 'sqrt-ter'.
