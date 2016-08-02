module Lambdas where

mTh :: Num a => a -> a -> a -> a
mTh x y z = x * y * z

mTh' :: Num a => a -> a -> a -> a
mTh' x y = \z -> x * y * z

mTh'' :: Num a => a -> a -> a -> a
mTh'' x = \y -> \z -> x * y * z

mTh''' :: Num a => a -> a -> a -> a
mTh''' = \x -> \y -> \z -> x * y * z


-- addOneIfOdd n = case odd n of
--   True -> f n
--   False -> n
--   where f n = n + 1

addOneIfOdd :: Integral a => a -> a
addOneIfOdd n = case odd n of
  True -> (\x -> x + 1) n
  False -> n


-- addFive x y = (if x > y then y else x) + 5

addFive :: (Num a, Ord a) => a -> a -> a
addFive x y = (\n -> n + 5) (max x y)


-- mflip f = \x -> \y -> f y x

mflip :: (a -> a -> a) -> a -> a -> a
mflip f x y = f y x
