newtype MyInt = MkMyInt Int

instance Eq MyInt where
  (==) (MkMyInt i1) (MkMyInt i2) = i1 == i2

instance Ord MyInt where
  (<=) (MkMyInt i1) (MkMyInt i2) = i1 <= i2

instance Num MyInt where
  (+) (MkMyInt i1) (MkMyInt i2) = MkMyInt (i1 + i2)
  (-) (MkMyInt i1) (MkMyInt i2) = MkMyInt (i1 - i2)
  (*) (MkMyInt i1) (MkMyInt i2) = MkMyInt (i1 * i2)
  negate (MkMyInt i)            = MkMyInt (negate i)
  abs (MkMyInt i)               = MkMyInt (abs i)
  signum (MkMyInt i)            = MkMyInt (signum i)
  fromInteger int               = MkMyInt (fromIntegral int)

instance Show MyInt where
  show (MkMyInt i) = "MkMyInt " ++ show i

-- Dołączyć BinTree a do klasy Eq (deklaracja instance Eq a => Eq (BinTree a) where)

data BinTree a = EmptyBT |
                 NodeBT a (BinTree a) (BinTree a)


instance Eq a => Eq (BinTree a) where
    (==) (NodeBT root1 lt1 rt1) (NodeBT root2 lt2 rt2) = root1 == root2 && lt1 == lt2 && rt1 == rt2
    (==) EmptyBT EmptyBT = True

data Cart3DVec a = MkCart3DVec' a a a

instance Eq a => Eq (Cart3DVec a) where
    (==) (MkCart3DVec' x1 y1 z1) (MkCart3DVec' x2 y2 z2) = x1 == x2 && y1 == y2 && z1 == z2
