f1 = \x -> x - 2

f2 = \x y z -> sqrt(x^2 + y^2)

f3 = \x y z -> sqrt(x^2 + y^2 + z^2)

-- (2*)
f4 = \x -> 2*x

-- (*2)
f5 = \x -> x*2

--(2^)
twoToPower = \x -> 2^x

-- (^2)
toPower2 = \x -> x^2

-- (2/)
twoDivBy = \x -> 2/x

-- (/3)
divBy3 = \x -> x/3

-- (4-)
fourMinus = \x -> 4-x

-- f7 x = if x `mod` 2 == 0 then True else False
f7 = \x -> x `mod` 2 == 0

-- f8 x = let y = sqrt x in 2 * y^3 * (y + 1)
f8 = \x -> 2 * sqrt(x)^3 * (sqrt(x) + 1)

-- f9 1 = 3
-- f9 _ = 0
f9 = \x -> if x == 1 then 3 else 0