import Data.Char

doubleElems []     = []
doubleElems (x:xs) = 2 * x : doubleElems xs

sqrElems [] = []
sqrElems (x:xs) = x^2 : sqrElems xs

lowerCase [] = []
lowerCase (x:xs) = toLower x : lowerCase xs

map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x : map' f xs

doubleElems' = map' (*2)

sqrElems'    = map' (^2)

lowerCase'   = map' toLower

-- Przepisać powyższe funkcje używając list comprehensions
doubleElems'' xs = [x*2 | x <- xs]

sqrElems'' xs = [x^2 | x <- xs]

lowerCase'' xs = [toLower x | x <- xs]

-- Porównać czasy wykonania
-- ghci> length . filter even $ doubleElems [1..10^7]
-- 10000000
-- (9.23 secs, 4,880,065,152 bytes)
-- ghci> length . filter even . map (*2) $ [1..10^7] 
-- 10000000
-- (4.29 secs, 3,360,065,264 bytes)

