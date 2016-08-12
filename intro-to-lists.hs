module IntroToLists where

myTail :: [a] -> [a]
myTail []     = []
myTail (_:xs) = xs

safeTail :: [a] -> Maybe [a]
safeTail []     = Nothing
safeTail [_]    = Nothing
safeTail (_:xs) = Just xs

myHead' :: [a] -> Maybe a
myHead' []    = Nothing
myHead' (x:_) = Just x
