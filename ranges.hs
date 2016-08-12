module Ranges where

--   Write your own enumFromTo definitions for the types provided. Do
-- not use range syntax to do so. It should return the same results as if
-- you did [start..stop].

-- this is the ticket?
eft :: (Eq a, Ord a, Enum a) => a -> a -> [a]
eft x y
  | x == y    = [x]
  | x < y     = x : eft (succ x) y
  | otherwise = []

eftBool :: Bool -> Bool -> [Bool]
eftBool = undefined

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = undefined

eftInt :: Int -> Int -> [Int]
eftInt = undefined

eftChar :: Char -> Char -> String
eftChar = undefined
