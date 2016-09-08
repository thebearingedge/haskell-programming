module MyStandard where

myOr :: [Bool] -> Bool
myOr xs
  | null xs   = False
  | otherwise = head xs || myOr (tail xs)

myAny :: (a -> Bool) -> [a] -> Bool
myAny f xs
  | null xs   = False
  | otherwise = f (head xs) || myAny f (tail xs)

myElem :: Eq a => a -> [a] -> Bool
myElem x xs
  | null xs   = False
  | otherwise = x == head xs || myElem x (tail xs)

myElem' :: Eq a => a -> [a] -> Bool
myElem' x = myAny (== x)

myReverse :: [a] -> [a]
myReverse xs
  | null xs   = []
  | otherwise = last xs : myReverse (init xs)

squish :: [[a]] -> [a]
squish xss
  | null xss  = []
  | otherwise = head xss ++ squish (tail xss)

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f xs
  | null xs   = []
  | otherwise = squish (map f xs)

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

mostBy :: Ordering -> (a -> a -> Ordering) -> [a] -> a
mostBy o fn xs
  | null xs        = error "empty list"
  | length xs == 1 = x
  | otherwise      = if fn x x' == o
                       then mostBy o fn (x : tail xs')
                       else mostBy o fn xs'
  where
    x   = head xs
    xs' = tail xs
    x'  = head xs'

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = mostBy GT

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = mostBy LT

myMaximum :: Ord a => [a] -> a
myMaximum = myMaximumBy compare

mMinimum :: Ord a => [a] -> a
mMinimum = myMinimumBy compare
