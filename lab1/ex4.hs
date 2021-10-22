sqr :: Double -> Double
sqr x = x * x

-- dl wektora w 2D
vec2DLen :: (Double, Double) -> Double
vec2DLen (x, y) = sqrt (x^2 + y^2)

-- dl wektora w 3D
vec3DLen :: (Double, Double, Double) -> Double
vec3DLen (x,y,z) = sqr(x^2 + y^2 + z^2)

-- zamiana
swap :: (Int, Char) -> (Char, Int)
swap (x,y) = (y,x)

-- czy trzy liczby sa rowne
threeEqual :: (Int, Int, Int) -> Bool
threeEqual (x, y, z) = x == y && y == z

-- oblicza pole trojkata - wzor Herona
area :: (Double, Double, Double) -> Double 
area (a,b,c) = sqrt((a+b+c)/2*((a+b+c)/2 - a)*((a+b+c)/2 -b)*((a+b+c)/2 -c))
