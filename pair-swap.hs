module PairSwap where

pairSwap :: (a, b) -> (c, d) -> ((b, d), (a, c))
pairSwap a b = ((snd a, snd b), (fst a, fst b))
