module AddWeird where


addWeird :: (Num a, Ord a) => a -> a -> a
addWeird x y =
  if x > 1
    then x + y
    else x
