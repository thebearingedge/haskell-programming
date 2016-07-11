module PartiallyApplied where

f :: a -> a -> a -> a
f = undefined


g :: a -> b -> c -> b
g = undefined


h :: (Num a, Num b) => a -> b -> b
h = undefined


jackal :: (Ord a, Eq b) => a -> b -> a
jackal = undefined


kessel :: (Ord a, Eq b) => a -> b -> a
kessel = undefined
