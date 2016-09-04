module Filters where

multiplesOfThree :: [Integer] -> [Integer]
multiplesOfThree = filter (\x -> rem x 3 == 0)

countMultplesOfThree :: [Integer] -> Int
countMultplesOfThree xs = length $ multiplesOfThree xs

removeArticles :: String -> [String]
removeArticles str =
    filter (`notElem` articles) strWords
  where
    articles = ["the", "a", "an"]
    strWords = words str
