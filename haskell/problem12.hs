import Data.List

triangleNumber :: (Integral a) => a -> a
triangleNumber n = foldl (+) 0 [1..n]

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors n = let prime = head $ dropWhile ((/= 0) . mod n) [2 .. n]
           		 in (prime :) $ primeFactors $ div n prime

factorCount :: Integer -> Int
factorCount n = foldl (*) 1 $ map (1+) $ map (length) $ group $ primeFactors n

answer :: Integer -> Integer
answer n
	| (factorCount $ triangleNumber n) > 500 = n
	| otherwise = answer n