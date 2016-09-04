module ListComprehensions where

mySqr = [ x^2 | x <- [1..5] ]
myCube = [ y^3 | y <- [1..5] ]
--
-- 1. First write an expression that will make tuples of the outputs of
-- mySqr and myCube.
--
-- 2. Now alter that expression so that it only uses the x and y values
-- that are less than 50.
--
-- 3. Apply another function to that list comprehension to determine
-- how many tuples inhabit your output list.

sqrCube :: [a] -> [a] -> [(a, a)]
sqrCube xs ys = [ (x, y) | x <- xs, y <- ys ]

sqrCubeTo50 :: (Ord a, Num a) => [a] -> [a] -> [(a, a)]
sqrCubeTo50 xs ys = [ (x, y) | x <- xs, y <- ys, x < 50, y < 50]

outputLength :: (Ord a, Num a) => [a] -> [a] -> Int
outputLength xs ys = length $ sqrCubeTo50 xs ys
