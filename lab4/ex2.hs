-- product type example (one constructor)
data CartInt2DVec = MkCartInt2DVec Int Int -- konwencja: prefix 'Mk' dla konstruktora

xCoord :: CartInt2DVec -> Int
xCoord (MkCartInt2DVec x _) = x

yCoord :: CartInt2DVec -> Int
yCoord (MkCartInt2DVec _ y) = y

data Cart2DVec' a = MkCart2DVec' a a

xCoord' :: Cart2DVec' a -> a
xCoord' (MkCart2DVec' x _) = x

yCoord' :: Cart2DVec' a -> a
yCoord' (MkCart2DVec' _ y) = y

-- ghci>  :i CartInt2DVec
-- data CartInt2DVec = MkCartInt2DVec Int Int
-- Defined at ex2.hs:2:1

-- ghci>  :t MkCartInt2DVec
-- MkCartInt2DVec :: Int -> Int -> CartInt2DVec

-- ghci> :t MkCart2DVec'
-- MkCart2DVec' :: a -> a -> Cart2DVec' a

-- ghci>  :t MkCart2DVec' 1 2
-- MkCart2DVec' 1 2 :: Num a => Cart2DVec' a

data Cart2DVec'' a = MkCart2DVec'' {x::a, y::a} -- record syntax

-- ghci> :i Cart2DVec''
-- data Cart2DVec'' a = MkCart2DVec'' {x :: a, y :: a}
--         -- Defined at ex2.hs:31:1
-- ghci> :t MkCart2DVec''
-- MkCart2DVec'' :: a -> a -> Cart2DVec'' a
-- ghci> :t x
-- x :: Cart2DVec'' a -> a
-- ghci> :t y
-- y :: Cart2DVec'' a -> a


-- xCoord'' :: Cart2DVec'' a -> a
-- xCoord'' (MkCart2DVec'' {x = xVal, y = _}) = xVal

-- yCoord'' :: Cart2DVec'' a -> a
-- yCoord'' (MkCart2DVec'' {y = yVal, x = _}) = yVal


-- sum type example (two constructors)
data List a = EmptyL | Cons a (List a) deriving Show

head' :: List a -> a
head' EmptyL      = error "head': the empty list has no head!"
head' (Cons x xs) = x

-- enum type example (special case of sum type)
data ThreeColors = Blue |
                   White |
                   Red

type ActorName = String

leadingActor :: ThreeColors -> ActorName
leadingActor Blue  = "Juliette Binoche"
leadingActor White = "Zbigniew Zamachowski"
leadingActor Red   = "Irene Jacob"

-- Zdefiniować funkcje dostępowe np. xCoord3D itd. dla następującego 
-- typu (reprezentacja wektorów w 3D, współrzędne kartezjańskie)

data Cart3DVec a = Cart3DVec a a a

xCord3D :: Cart3DVec a -> a
xCord3D (Cart3DVec x _ _) = x

yCord3D :: Cart3DVec a -> a
yCord3D (Cart3DVec _ y _) = y

zCord3D :: Cart3DVec a -> a
zCord3D (Cart3DVec _ _ z) = z

-- ghci> yCord3D $ Cart3DVec 1 2 3
-- 2

data Cart3DVec' a = MkCart3DVec' a a a

xCord3D' :: Cart3DVec' a -> a
xCord3D' (MkCart3DVec' x _ _) = x

yCord3D' :: Cart3DVec' a -> a
yCord3D' (MkCart3DVec' _ y _) = y

zCord3D' :: Cart3DVec' a -> a
zCord3D' (MkCart3DVec' _ _ z) = z

-- ghci> xCord3D' $ MkCart3DVec' 1 2 3
-- 1

-- Wykorzystując record syntax napisać nową wersję Cart3DVec, a następnie sprawdzić istnienie odpowiednich (wygenerowanych przez kompilator) funkcji dostępowych

data Cart3DVec'' a = Cart3DVec'' {x'::a, y'::a, z'::a}

xCord3D'' :: Cart3DVec'' a -> a
xCord3D'' (Cart3DVec'' {x' = xVal, y' = _, z' = _}) = xVal

yCord3D'' :: Cart3DVec'' a -> a
yCord3D'' (Cart3DVec'' {x' = _, y' = yVal, z' = _}) = yVal

zCord3D'' :: Cart3DVec'' a -> a
zCord3D'' (Cart3DVec'' {x' = _, y' = _, z' = zVal}) = zVal

-- Zdefiniować funkcję area :: Shape -> Float
-- obliczającą pole powierzchni (figury płaskiej); założyć, że
-- data Shape = Circle Float | Rectangle Float Float

data Shape = Circle Float | Rectangle Float Float

area :: Shape -> Float
area (Circle r)= pi*r^2
area (Rectangle a b) = a*b

-- Zdefiniować typ wyliczeniowy TrafficLights dla sygnalizacji świetlnej oraz funkcję
-- actionFor :: TrafficLights -> String podającą, co powinien robić kierowca, widząc dane światło

data TrafficLights = Red' | Yellow' | Green'

actionFor :: TrafficLights -> String
actionFor Red' = "Stop!"
actionFor Yellow' = "Slow down!"
actionFor Green' = "Go!"

data Person = Person { name :: String, surname :: String} deriving (Show)