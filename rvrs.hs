module Rvrs where

rvrs :: String -> String
rvrs str = concat [drop 9 str, " ", drop 6 (take 8 str), " ", take 5 str]