sgn :: Int -> Int
sgn n = if n < 0
       then -1
       else if n == 0
            then 0
            else 1

-- oblicza wartosc bezwzgledna
absInt :: Int -> Int 
absInt a = if a < 0 
    then -1*a
    else a

--  oblicza minimum z dwóch liczb
min2Int :: (Int, Int) -> Int
min2Int (a,b) = if a < b 
    then a 
    else b 

--  oblicza minimum z trzech liczb
min3Int1 :: (Int, Int, Int) -> Int 
min3Int1 (a,b,c) = if a < b
    then if a < c
        then a
        else c
    else if b < c
        then b 
        else c
 
--  oblicza minimum z trzech liczb uzywajac min2Int
min3Int2 :: (Int, Int, Int) -> Int 
min3Int2 (a,b,c) = min2Int(min2Int(a,b), c)

-- zamienia małą na wielką literę
toUpper :: Char -> Char
toUpper a = toEnum(fromEnum a - 32)::Char

-- zamienia wielką na małą literę
toLower :: Char -> Char
toLower a = toEnum(fromEnum a + 32)::Char

-- sprawdza, czy znak jest liczbą
isDigit :: Char -> Bool
isDigit a = a <= '9' && a >= '0'

-- zamienia znak na liczbę
charToNum :: Char -> Int
charToNum a = fromEnum  a - fromEnum '0'

-- zamienia
romanDigit :: Char -> String
romanDigit a 
    | a == '1' = "I"
    | a == '2' = "II"
    | a == '3' = "III"
    | a == '4' = "IV"
    | a == '5' = "V"
    | a == '6' = "VI"
    | a == '7' = "VII"
    | a == '8' = "VIII"
    | a == '9' = "IX"