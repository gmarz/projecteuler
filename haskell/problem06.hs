-- http://projecteuler.net/problem=6
-- What is the difference between the sum of the squares and the square of the sums?

sumOfSquares = sum $ map (^2) [1..100]
squareOfSum = (^2) $ sum [1..100]

answer = squareOfSum - sumOfSquares