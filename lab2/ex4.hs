-- Operacje na listach

-- length - dlugosc
-- reverse - odwrocenie
-- head - glowa, pierwszy element 
-- tail - wszystko bez glowy
-- init - wszystko bez ostatniego elementu

-- indeksy od 0

-- 0 : list        (dodaje 0 na początek)
-- list ++ [0]     (dodaje 0 na koniec)
-- list !! 2       (zwraca element o indeksie 2 z listy)
-- take 3           zwraca pierwsze 3 elementy
-- drop 2           zwraca listę bez pierwszych 2 elementów
-- null list        czy pusta
-- any (>2) list    
-- all (>0) list
-- zip [1, 3] ['a','b'] -> [(1,'a'),(3,'b')] lista par
-- splitAt 2 list   dzieli listę na 2 (1 długości 2 i reszta), zwraca krotkę
-- sort
-- 2 `elem` list    czy 2 jest w liście
-- minimum, maximum, sum, 
-- product          zwraca wynik mnozenia wszystkich elementow listy 


isPalindrome :: [Char] -> Bool
isPalindrome s = s == reverse s

getElemAtIdx :: [Char] -> Int -> Char 
getElemAtIdx list idx = head (drop idx list)
