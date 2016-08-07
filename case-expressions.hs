module CaseExpressions where

funcZ :: (Eq a, Num a) => a -> String
funcZ x =
  case x + 1 == 1 of
    True -> "Awesome"
    False -> "wut"

pal :: String -> String
pal x =
  case x == reverse x of
    True -> "yes"
    False -> "no"

pal' :: String -> String
pal' x =
  case x == y of
    True -> "yes"
    False -> "no"
  where y = reverse x
