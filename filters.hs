module Filters where

multiplesOfThree :: [Integer] -> [Integer]
multiplesOfThree = filter (\x -> rem x 3 == 0)

countMultplesOfThree :: [Integer] -> Int
countMultplesOfThree = length . multiplesOfThree

removeArticles :: String -> [String]
removeArticles str =
    filter (`notElem` articles) (words str)
  where
    articles = ["the", "a", "an"]
