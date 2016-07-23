module DataWoot4 where

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge f g a = fst $ g $ f a
