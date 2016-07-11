module GetAbsoluteValue where

getAbsoluteValue :: Integer -> Integer
getAbsoluteValue num = if num < 0
                         then num * (-1)
                         else num
