-- http://projecteuler.net/problem=5
-- What is the smallest number divisible by each of the numbers 1 to 20?

divisible :: (Integral a) => a -> Bool
divisible n = all (==0) $ map (mod n) [1..20]

answer = head [x | x <- [1..] , divisible x]