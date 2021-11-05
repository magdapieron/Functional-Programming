fib :: (Num a, Eq a) => a -> a
fib n =
 if n == 0 || n == 1 then n
 else fib (n - 2) + fib (n - 1)


--  fibs2 :: Int => Int -> Int
--  fibs2 n = length ((0 : 1 : zipWith (+) fibs2 (tail fibs) :: n)

sum' :: Num a => [a] -> a
sum' []   = 0
sum' (x:xs) = x + sum' xs

prod' :: Num a => [a] -> a -- prod' [1,2,3] = 6
prod' [] = 1
prod' (x:xs) = x*prod' xs


length' :: [a] -> Int -- length' [1,1,1,1] = 4
length' [] = 0
length' (x:xs) = 1+length' xs


or' :: [Bool] -> Bool -- or' [True, False, True] = True
or' [] = False 
or' (x:xs) = x || or' xs


and' :: [Bool] -> Bool -- and' [True, False, True] = False
and' [] = True 
and' (x:xs) = x && and' xs


elem' :: Eq a => a -> [a] -> Bool -- elem' 3 [1,2,3] = True
elem' n [] = False 
elem' n (x:xs) = x == n || elem' n xs


doubleAll :: Num t => [t] -> [t] -- double doubleAll [1,2] = [2,4]
doubleAll [] = []
doubleAll (x:xs) = x*2 : doubleAll xs

squareAll :: Num t => [t] -> [t] -- double squareAll [2,3] = [4,9]
squareAll [] = []
squareAll (x:xs) = x^2 : squareAll xs

selectEven :: Integral t => [t] -> [t] -- selectEven [1,2,3] = [2]
selectEven [] = []
selectEven (x:xs) = if x `mod` 2 == 0
    then x : selectEven xs
    else selectEven xs

--Napisać funkcję obliczającą średnią arytmetyczną elementów listy

avg :: (Real a, Fractional b) => [a] -> b
avg [] = 0
avg x = realToFrac (sum' x) /  fromIntegral (length' x) 
