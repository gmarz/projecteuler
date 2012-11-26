-- http://projecteuler.net/problem=10
-- Calculate the sum of all the primes below two million.

isPrime :: (Integral a) => a -> Bool
isPrime n 
	| n <= 1 = False
	| otherwise = 0 `notElem` map (mod n) [2..n-1]
	
primes = [x | x <- [2..2000000] , isPrime x]

answer = sum primes