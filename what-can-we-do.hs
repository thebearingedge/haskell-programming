module WhatCanWeDo where


data Rocks =
  Rocks String deriving (Eq, Show, Ord)

data Yeah =
  Yeah Bool deriving (Eq, Show, Ord)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show, Ord)

phew = Papu (Rocks "chases")
            (Yeah True)

truth = Papu (Rocks "chomskydoz")
             (Yeah True)

equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p'

comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'
