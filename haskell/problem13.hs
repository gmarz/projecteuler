-- http://projecteuler.net/problem=13
-- Find the first ten digits of the sum of one-hundred 50-digit numbers. (Given in input.txt)

import System.IO

main = do
	handle <- openFile "input.txt" ReadMode
	contents <- hGetContents handle
	let bigNumbers = map read (lines contents)::[Integer]
	let bigSum = sum bigNumbers
	let answer = take 10 (show bigSum)
	putStr answer
	hClose handle