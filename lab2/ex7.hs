sum'2 :: Num a => [a] -> a
sum'2 xs = loop 0 xs
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs
-- loop - funckja wewnętrzna, wywoływana z 2 argumentami - akumulatorem i listą

sum'3 :: Num a => [a] -> a
sum'3 = loop 0
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs


prod'2 :: Num a => [a] -> a
prod'2 = loop 1
    where loop acc[] = acc
          loop acc (x:xs) = loop (x*acc) xs


length'2 :: [a] -> Int
length'2 = loop 0
    where loop acc[] = acc
          loop acc(x:xs) = loop (1 + acc) xs