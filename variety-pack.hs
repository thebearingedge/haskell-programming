module VarietyPack where

k :: (a, b) -> a
k (x, _) = x

k1 :: Integer
k1 = k (4 - 1, 10 :: Integer)

k2 :: String
k2 = k ("three", (1 + 2) :: Integer)

k3 :: Integer
k3 = k (3, True)

f' :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f' (a, _, c) (d, _, f) = ((a, d), (c, f))
