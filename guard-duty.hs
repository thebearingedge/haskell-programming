module GuardDuty where

pal :: String -> Bool
pal xs
  | xs == reverse xs = True
  | otherwise = False

numbers :: (Num a, Ord a) => a -> Int
numbers x
  | x < 0 = -1
  | x == 0 = 0
  | otherwise = 1
