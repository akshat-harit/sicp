#lang sicp
(define (factorial n)
  (if (= n 0)
       1
       (* n (factorial (- n 1)))
       )
  )



(define (factorial-iterative n)
  (define (fact-iter n res counter)
    (if (> counter n)
        res
        (fact-iter n (* res counter) (+ counter 1))
        )
    )
  (fact-iter n 1 1)
)
