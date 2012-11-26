-- http://projecteuler.net/problem=9
-- Find the only Pythagorean triplet, {a, b, c}, for which a + b + c = 1000.

set = [0..1000]
triplets = [(a,b,c) | a <- set, b <- set, c <- set, a + b + c == 1000, a < b, b < c]

answer = [(a,b,c) | (a,b,c) <- triplets, (a^2) + (b^2) == (c^2)]