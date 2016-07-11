module Currying where

nonsense :: Bool -> Integer
nonsense True = 805
nonsense    _ = 31337


typicalCurriedFunction :: Integer -> Bool -> Integer
typicalCurriedFunction i b = i + (nonsense b)


uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction (i, b) = i + (nonsense b)


anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)


anonymousNested :: Integer -> Bool -> Integer
anonymousNested = \i -> \b -> i + (nonsense b)
