module Arith4 where

-- id :: a -> a
-- id x = x

roundTrip :: (Show a, Read b) => a -> b
roundTrip = read . show

main :: IO ()
main = do
  print (roundTrip 4 :: Integer)
  print (id 4 :: Integer)
