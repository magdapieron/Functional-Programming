absInt :: Int -> Int
absInt n | n >= 0    = n
         | otherwise = -n

-- funckja signum
sgn :: Int -> Int
sgn s 
    | s > 0 = 1
    | s < 0 = -1
    | otherwise = 0


min3Int :: (Int, Int, Int) -> Int
min3Int (a, b, c) 
    | (a < b) && (a < c) = a
    | (b < a) && (b < c) = b
    | otherwise = c
