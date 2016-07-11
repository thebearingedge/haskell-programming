module BasicStrings where

a :: String -> String
a str = concat [str, "!"]

b :: String -> String
b str = drop 4 (take 5 str)

c :: String -> String
c str = drop 9 str

thirdChar :: String -> Char
thirdChar str = str !! 2

inString :: Int -> Char
inString index = "Curry is awesome!" !! index
