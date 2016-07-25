module WillTheyWork where


one = max (length [1, 2, 3]) (length [8, 9, 10, 11, 12]) -- yes

two = compare (3 * 4) (3 * 5) -- yes

-- three = compare "Julie" True
-- no

three' = compare "Julie" (show True)

four = (5 + 3) > (3 + 6) -- yes
