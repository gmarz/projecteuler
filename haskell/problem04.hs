-- http://projecteuler.net/problem=4
-- Find the largest palindrome made from the product of two 3-digit numbers.

products = [x*y | x <- [100..999], y <- [100..999]]
	
palindromes :: (Integral a) => [a] -> [a]
palindromes [] = []
palindromes (x:xs)
	| (show x) == reverse (show x) = x : palindromes xs
	| otherwise = palindromes xs

answer = maximum (palindromes products)


