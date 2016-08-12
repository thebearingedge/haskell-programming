module ReviewRecursion where

-- Write a function that recursively sums all numbers from 1 to n,
-- n being the argument. So that if n was 5, you’d add 1 + 2 + 3 + 4
-- + 5 to get 15. The type should be (Eq a, Num a) => a -> a.

sumToN :: (Eq a, Num a) => a -> a
sumToN n
  | n' == 0   = 0
  | otherwise = n' + sumToN (n' - 1)
  where n' = abs n

-- Write a function that multiplies two integral numbers using
-- recursive summation. The type should be (Integral a) => a ->
-- a -> a.

multSum :: Integral a => a -> a -> a
multSum x y
  | x == 0 = 0
  | y == 0 = 0
  | otherwise = y + multSum (x' - 1) y
  where x' = abs x

-- McCarthy 91

mc91 :: Integer -> Integer
mc91 n
  | n > 100   = n - 10
  | otherwise = mc91 $ mc91 (n + 11)
