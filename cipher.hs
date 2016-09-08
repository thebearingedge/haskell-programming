module Cipher where

import           Data.Char

shift :: Int -> Char -> Char
shift x y = chr endCode
  where
    startCode = ord y
    endCode =
      if startCode + x <= 122
        then startCode + x
      else startCode - 65 + x

cipher :: String -> String
cipher = map (shift 13)
