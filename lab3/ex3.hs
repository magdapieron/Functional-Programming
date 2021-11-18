sqr x = x^2

funcFactory n = case n of
 1 -> id
 2 -> sqr
 3 -> (^3)
 4 -> \x -> x^4
 5 -> intFunc
 _ -> const n
 where
   intFunc x = x^5

-- zwraca rozwinięcie funkcji ex w szereg MacLaurina o długości n+1, n < 6
expApproxUpTo :: Int -> Double -> Double
expApproxUpTo n = \x -> sum[x^k/fromIntegral(frac k) | k <- [0..n]]
    where frac k = if k == 0 then 1 else k*(frac k-1)