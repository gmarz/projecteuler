-- http://projecteuler.net/problem=7
-- Find the 10001st prime.

isPrime :: (Integral a) => a -> Bool
isPrime n 
	| n <= 1 = False
	| otherwise = 0 `notElem` map (mod n) [2..n-1]
	
primes = [x | x <- [2..] , isPrime x]

answer = last $ take 10001 primes