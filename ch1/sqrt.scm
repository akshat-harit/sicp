#lang sicp

(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0) (- x)
      x))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (square-iter guess)
    (if (good-enough? guess)
        guess
        (square-iter (improve guess))))
  (square-iter 1.0)
)
(sqrt 2)
