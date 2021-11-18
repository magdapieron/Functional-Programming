import Data.Char
onlyEven [] = []
onlyEven (x:xs)
 | x `mod` 2 == 0 = x : onlyEven xs
 | otherwise      = onlyEven xs

onlyOdd [] = []
onlyOdd (x:xs)
  | x `mod` 2 == 1 = x : onlyOdd xs
  | otherwise = onlyOdd xs

onlyUpper [] = []
onlyUpper (x:xs)
  | isUpper x  = x : onlyUpper xs
  | otherwise  = onlyUpper xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x = x : filter' p xs
  | otherwise = filter' p xs

onlyEven'  = filter'  (\x -> x `mod` 2 == 0)

onlyOdd'   = filter' (\x -> x `mod` 2 == 1)

onlyUpper' = filter' isUpper

-- Porównać czasy wykonania
-- ghci> length (onlyEven [1..10^6])
-- 500000
-- (1.26 secs, 408,063,552 bytes)
-- ghci> length (filter even [1..10^6])
-- 500000
-- (0.21 secs, 204,063,368 bytes)

-- Zmodyfikować powyższe wyrażenia tak, aby nie zawierały nawiasów (użyć . i/lub $)
-- ghci> length $ onlyEven [1..10^6]
-- ghci> length $ filter even [1..10^6]

-- Przepisać używając list comprehensions length (filter even [1..10^6])
-- Zmierzyć czas wykonania i porównać go z uzyskanym w poprzednim zadaniu
-- ghci> length ([x | x<-[1..10^6], x `mod` 2 == 0])
-- 500000
-- (0.69 secs, 196,063,336 bytes)

