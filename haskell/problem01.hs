-- http://projecteuler.net/problem=1
-- Add all the natural numbers below one thousand that are multiples of 3 or 5.

getMultiples = [x | x <- [0..999], x `mod` 3 == 0 || x `mod` 5 == 0]

answer = sum getMultiples