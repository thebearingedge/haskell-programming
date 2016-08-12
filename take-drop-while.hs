module TakeDropWhile where

-- Using takeWhile and dropWhile, write a function that takes a string
-- and returns a list of strings, using spaces to separate the elements
-- of the string into words, as in the following sample:
--
-- *Main> myWords "all i wanna do is have some fun"
-- ["all","i","wanna","do","is","have","some","fun"]
myWords :: String -> [String]
myWords "" = []
myWords str = word : myWords sentence
  where word     = takeWhile (/= ' ') str
        sentence = drop (succ $ length word) str

-- How am I supposed to use dropWhile?
