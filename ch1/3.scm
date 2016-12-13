#lang sicp
(define (sumOfLargerSquares a b c)
  (cond ((and (< a b) (< a  c)) (+ (* b b) (* c c)))
        ((< b c) (+ (* a a) (* c c)))
        ( (+ (* a a) (* b b)))))
(sumOfLargerSquares 3 4 5)
(sumOfLargerSquares 5 3 4)
(sumOfLargerSquares 4 5 3)
