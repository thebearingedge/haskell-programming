module IsPalindrome where

isPalindrome :: String -> Bool
isPalindrome     [] = True
isPalindrome string = string == reverse string
