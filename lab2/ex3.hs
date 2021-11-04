-- Leniwe obliczanie/wartościowanie
-- to strategia wyznaczania wartości argumentów funkcji tylko wtedy, kiedy są potrzebne
{-  przyklad z lab
ghci> let f x y = if (x > 0) then 42 else x + y
ghci> :t f
ghci> f 0 (1/0)
ghci> f 1 (1/0)

ghci> let neverEndingStory x = neverEndingStory (x + 1) `mod` 100
ghci> neverEndingStory 1 -- po kilku sekundach naciskamy [Ctrl-C]
ghci> f 0 (neverEndingStory 1) -- po kilku sekundach naciskamy [Ctrl-C]
ghci> f 1 (neverEndingStory 1)
-}