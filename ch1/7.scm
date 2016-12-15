#lang sicp
(define (square x)
  (* x x))
(define (abs x)
  (if (< x 0) (- x)
      x))
(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess oldguess x)
  (< (abs (/ (- oldguess guess) oldguess)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square-iter guess oldguess x)
  (if (good-enough? guess oldguess x)
      guess
      (square-iter (improve guess x) guess x)))

(define (sqrt x)
  (square-iter 1.0 2.0 x))
(sqrt 100000000000000)
