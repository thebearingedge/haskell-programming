module FunctionalPatterns where

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d = xLast `mod` 10

tensDigit' :: Integral a => a -> a
tensDigit' x = fst $ divMod x 10

hunsD :: Integral a => a -> a
hunsD x = fst $ divMod x 100

foldBool :: a -> a -> Bool -> a
foldBool = error "Error: Need to implement foldBool!"

-- case expression
foldBool1 :: a -> a -> Bool -> a
foldBool1 x y b =
  case b of
    True -> x
    False -> y

-- guards
foldBool2 :: a -> a -> Bool -> a
foldBool2 x y b
  | b         = x
  | otherwise = y

-- pattern matching
foldBool3 :: a -> a -> Bool -> a
foldBool3 x _ True = x
foldBool3 _ y False = y

g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)
