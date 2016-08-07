module ArtfulDodgy where

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

-- dodgy 1 1
-- 1 + (1 * 10)
-- 1 + 10
-- 11

-- dodgy 2 2
-- 2 + (2 * 10)
-- 2 + 20
-- 22

-- dodgy 1 2
-- 1 + (2 * 10)
-- 1 + 20
-- 21

-- dodgy 2 1
-- 2 + (1 * 10)
-- 2 + 10
-- 12

oneIsOne :: Num a => (a -> a)
oneIsOne = dodgy 1

-- oneIsOne 1
-- 1 + (1 * 10)
-- 1 + 10
-- 11

-- oneIsOne 2
-- 1 + (2 * 10)
-- 1 + 20
-- 21

-- oneIsOne 3
-- 1 + (3 * 10)
-- 1 + 30
-- 31

oneIsTwo :: Num a => (a -> a)
oneIsTwo = (flip dodgy) 2

-- oneIsTwo 1
-- 1 + (2 * 10)
-- 1 + 20
-- 21

-- oneIsTwo 2
-- 2 + (2 * 10)
-- 2 + 20
-- 22

-- oneIsTwo 3
-- 3 + (2 * 10)
-- 3 + 20
-- 23
