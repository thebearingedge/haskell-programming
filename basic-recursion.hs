module BasicRecursion where

-- brokenFact1 :: Integer -> Integer
-- brokenFact1 n = n * brokenFact1 (n - 1)

-- brokenFact1 4 = 4 * (4 - 1)
--                   * ((4 - 1) - 1)
--                   * (((4 - 1) - 1) - 1)
--                   ... this series never stops

factorial :: Integer -> Integer
factorial x
  | x == 0    = 1
  | otherwise = x' * factorial (x' - 1)
  where x' = abs x

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes 0 n     = n
incTimes times n = 1 + incTimes (times - 1) n

applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 _ b = b
applyTimes n f b = f . applyTimes (n - 1) f $ b

incTimes' :: (Eq a, Num a) => a -> a -> a
incTimes' times = applyTimes times (+1)

-- x = applyTimes 5 (+1) 5
-- x = 5 + 1 + applyTimes 4 (+1) 4
-- x = 5 + 1 + 1 + applyTimes 3 (+1) 3
-- x = 5 + 1 + 1 + 1 + applyTimes 2 (+1) 2
-- x = 5 + 1 + 1 + 1 + 1 + applyTimes 1 (+1) 1
-- x = 5 + 1 + 1 + 1 + 1 + 1
-- x = 10

fibonacci :: Integral a => a -> a
fibonacci nth
  | n == 0    = 0
  | n < 3     = 1
  | otherwise = fibonacci (n - 1) + fibonacci (n - 2)
  where n = abs nth

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n d count
         | n < d     = (count, n)
         | otherwise = go (n - d) d (count + 1)

dividedBy' :: Integral a => a -> a -> (a, a)
dividedBy' 0 _ = (0, 0)
dividedBy' _ 0 = error "Cannot divide by 0"
dividedBy' num den
  | num < den  = (0, num)
  | num >= den = (1 + fst quo, snd quo)
  | otherwise  = (1, 0)
  where quo = dividedBy (num - den) den
