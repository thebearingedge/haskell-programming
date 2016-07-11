module Area where

area d = pi * (r * r)
  where r = d / 2

main = putStrLn $ show $ area 6