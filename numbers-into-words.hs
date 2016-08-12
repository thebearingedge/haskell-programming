module WordNumber where

import           Data.Char (digitToInt)
import           Data.List (intercalate)

digitToWord :: Int -> String
digitToWord 1 = "one"
digitToWord 2 = "two"
digitToWord 3 = "three"
digitToWord 4 = "four"
digitToWord 5 = "five"
digitToWord 6 = "six"
digitToWord 7 = "seven"
digitToWord 8 = "eight"
digitToWord 9 = "nine"
digitToWord _ = error "digitToWord expects a digit > 0 || <= 9"

digits :: Int -> [Int]
digits n = map digitToInt $ show n

wordNumber :: Int -> String
wordNumber n = intercalate "-" $ map digitToWord (digits n)
