module MatchTheTypes where
import           Data.List (sort)

i :: Num a => a
i = 1

f :: Fractional a => a
f = 1.0

f' :: Fractional a => a
f' = 1.0

f'' :: RealFrac a => a
f'' = 1.0

freud :: Ord a => a -> a
freud x = x

freud' :: Int -> Int
freud' x = x

myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX

-- sigmund' :: Num a => a -> a
-- sigmund' x = myX

jung :: [Int] -> Int
jung xs = head (sort xs)

young :: Ord a => [a] -> a
young xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort

-- signifier :: Ord a => [a] -> a
-- signifier xs = head (mySort xs)
