module DataMaybe where

data Maybe' a = Nothing' | Just' a deriving Show

f :: Bool -> Maybe' Int
f False = Just' 0
f _     = Nothing'
