--http://projecteuler.net/problem=2
--By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

evenfibs = [x | x <- fibs, mod x 2 == 0]

answer = sum $ takeWhile(<=4000000) evenfibs