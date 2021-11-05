fst2Eq :: Eq a => [a] -> Bool
fst2Eq (x : y : _) | x == y = True
fst2Eq _                    = False

fstModSec :: Integral a => [a] -> Bool 
fstModSec (x : y : _) | x `mod` y == 0 = True 
fstModSec _                      = False