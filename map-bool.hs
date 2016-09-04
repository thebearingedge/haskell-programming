module MapBool where

import           Data.Bool
-- Prelude> map (\x -> if x == 3 then (-x) else (x)) [1..10]
-- [1,2,-3,4,5,6,7,8,9,10]

mapBool :: (Eq a, Num a) => [a] -> [a]
mapBool = map (\x -> bool x (-x) (x == 3))
