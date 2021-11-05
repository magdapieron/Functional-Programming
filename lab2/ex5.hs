-- Napisać wyrażenie obliczające, ile jest w przedziale [1,100] trójek liczb całkowitych
-- reprezentujących długości boków trójkąta prostokątnego

numberOfThrees = length [(a,b,c) | a <- [1..100], b <- [a..100], c <- [b..100], a^2 + b^2 == c^2]

-- Napisać wyrażenie obliczające, ile jest w przedziale [1,10000] liczb pierwszych
isPrime :: Integral t => t -> Bool
isPrime n = [i | i <- [2..n-1], n `mod` i == 0] == []

primeCount = length (filter isPrime [2..10000])

-- Napisać nową definicję funkcji isPrime wykorzystując ciąg primes

primes :: [Int]
primes = eratoSieve [2..]
 where
   eratoSieve :: [Int] -> [Int]
   eratoSieve (p : xs) = p : eratoSieve [x | x <- xs, x `mod` p /= 0]


isPrime1 :: Int -> Bool
isPrime1 n = last(takeWhile (<=n) primes) == n