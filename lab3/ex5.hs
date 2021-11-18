import Data.List

-- Wykorzystując funkcje sort i reverse oraz operator . napisać funkcję sortującą malejąco podaną listę
sortDesc :: Ord a => [a] -> [a]
sortDesc xs = (reverse . sort) xs

-- let w3 = \x y z -> sqrt (x^2 + y^2 + z^2)
-- ghci> (f . w3 1 2 . h) 3 ???