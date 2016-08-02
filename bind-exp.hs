module BindExp where


bindExp :: Integer -> String
bindExp x = let x = 10; y = 4 in
              "x was: " ++ show x
              ++ " and y was: " ++ show y
