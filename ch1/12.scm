#lang racket
(define (pascal-triangle r c)
  (cond ((= c 1) 1)
        ((= r c) 1)
        (else (+ (pascal-triangle (- r 1) c) (pascal-triangle (- r 1) (- c 1)))
              )
        )
  )
(pascal-triangle 5 3)