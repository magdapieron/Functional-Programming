myFun x = 2*x

add2T :: Num a => (a,a) -> a
add2T (x,y) = x + y

add2C1 :: Num a => a -> a -> a
add2C1 x y = x + y

-- przyjmuje parametr a , zwraca funcję a -> a
add2C2 :: Num a => a -> (a -> a)
add2C2 x y = x + y

-- -> łączny prawostronnie, dopuszcza się uproszczenie a*(b*c) = a*b*c (* - działanie)

-- f x y jest równoznaczne z (f x) y

add3T :: Num a => (a, a, a) -> a
add3T (x,y,z) = x + y + z

add3C :: Num a => a -> (a -> a -> a)
add3C x y z = x + y + z

curry2 :: ((a, b) -> c) -> a -> b -> c
curry2 f x y = f(x,y)
-- przykladowe wywolanie: (curry2 add2T) 1 2

uncurry2 :: (a -> b -> c) -> (a, b) -> c
uncurry2 f (x,y) = f x y
-- przykladowe wywolanie: (uncurry2 add2C1) (1,2)

curry3 :: ((a, b, c) -> d) -> a -> b -> c -> d
curry3 f x y z = f(x,y,z)
-- (curry3 add3T) 1 2 3

uncurry3 :: (a -> b -> c -> d) -> (a, b, c) -> d
uncurry3 f (x,y,z) = f x y z 
-- (uncurry3 add3C) (1,2,3)