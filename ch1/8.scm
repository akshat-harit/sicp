#lang sicp
(define (square x)
  (* x x))
(define (abs x)
  (if (< x 0) (- x)
      x))
(define (average x y)
  (/ (+ x y) 2))

(define (cube x)
  (* x (square x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))


(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (cube-root x)
  (cube-iter 1.0 x))
(cube-root 2)