module Chars where

import           Data.Char

uppersOnly :: String -> String
uppersOnly = filter isUpper

titleWord :: String -> String
titleWord str = toUpper (head str) : tail str

upperAll :: String -> String
upperAll str
  | null str  = []
  | otherwise = toUpper (head str) : upperAll (tail str)

upperFirst :: String -> Char
upperFirst str = toUpper (head str)

upperFirst' :: String -> Char
upperFirst' = toUpper . head
