module CasePractice where

-- functionC x y = if (x > y) then x else y

functionC :: Ord a => a -> a -> a
functionC x y =
  case x > y of
    True -> x
    False -> y

-- ifEvenAdd2 n = if even n then (n+2) else n

ifEvenAdd2 :: Integral a => a -> a
ifEvenAdd2 n =
  case even n of
    True -> n + 2
    False -> n

-- nums x =
--   case compare x 0 of
--     LT -> -1
--     GT -> 1

nums :: (Ord a, Num a) => a -> Int
nums x =
  case compare x 0 of
    LT -> -1
    GT -> 1
    EQ -> 0
