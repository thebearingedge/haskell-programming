module PatternMatching where


isTwo :: Integer -> Bool
isTwo 2 = True
isTwo _ = False


-- isTwo :: Integer -> Bool
-- isTwo _ = False
-- isTwo 2 = True
--
-- <interactive>:9:33: Warning:
--   Pattern match(es) are overlapped
--   In an equation for ‘isTwo’: isTwo 2 = ...


-- isTwo :: Integer -> Bool
-- isTwo 2 = True
--
-- <interactive>:9:5: Warning:
--     Pattern match(es) are non-exhaustive
--     In an equation for ‘isTwo’:
--         Patterns not matched: #x with #x `notElem` [2#]
