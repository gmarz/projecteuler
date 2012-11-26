--http://projecteuler.net/problem=3
--What is the largest prime factor of the number 600851475143 ?

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors n = let prime = head $ dropWhile ((/= 0) . mod n) [2 .. n]
           		 in (prime :) $ primeFactors $ div n prime

answer = last $ primeFactors 600851475143