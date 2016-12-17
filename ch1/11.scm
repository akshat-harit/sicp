#lang sicp
(define (f-recursive n)
  (if (<= n 3)
      n
      (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3)))) 
    )
  )

(f-recursive 20)




(define (f-iterative n)
  (define (f-iter max n1 n2 n3)
    (if (= max 3)
        n1
        (f-iter (- max 1) (+ n1 (* 2 n2) (* 3 n3)) n1 n2)
        )
    )
  (if (<= n 3)
      n
      (f-iter n 3 2 1)))

(f-iterative 200)
  