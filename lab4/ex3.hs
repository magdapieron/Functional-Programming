data BinIntTree = EmptyIntBT |
                  IntNodeBT Int BinIntTree BinIntTree

sumBinIntTree :: BinIntTree -> Int
sumBinIntTree EmptyIntBT = 0
sumBinIntTree (IntNodeBT n lt rt) = n + sumBinIntTree lt + sumBinIntTree rt

-- uogólnienie
data BinTree a = EmptyBT |
                 NodeBT a (BinTree a) (BinTree a)
                 deriving (Eq, Ord, Show, Read)

sumBinTree :: (Num a) => BinTree a -> a
sumBinTree EmptyBT = 0
sumBinTree (NodeBT n lt rt) = n + sumBinTree lt + sumBinTree rt

data Expr a = Lit a | -- literal/value a, e.g. Lit 2 = 2
              Add (Expr a) (Expr a)

eval :: Num a => Expr a -> a
eval (Lit n) = n
eval (Add e1 e2) = eval e1 + eval e2

show' :: Show a => Expr a -> String
show' (Lit n) = show n
show' (Add e1 e2) = "(" ++ show' e1 ++ "+" ++ show' e2 ++ ")"

 -- głębokość drzewa binarnego
depthOfBT :: BinTree a -> Int
depthOfBT EmptyBT = 0
depthOfBT (NodeBT n lt rt) = 1 + max (depthOfBT lt) (depthOfBT rt)

-- napisać trzy wersje: preorder, inorder, postorder
-- flattenBT :: BinTree a -> [a]  
flattenBTInOrder :: BinTree a -> [a] 
flattenBTInOrder EmptyBT = []
flattenBTInOrder (NodeBT n lt rt) = flattenBTInOrder lt ++ [n] ++ flattenBTInOrder rt

flattenBTPreOrder :: BinTree a -> [a] 
flattenBTPreOrder EmptyBT = []
flattenBTPreOrder (NodeBT n lt rt) = [n] ++ flattenBTInOrder lt ++ flattenBTInOrder rt

flattenBTPostOrder :: BinTree a -> [a] 
flattenBTPostOrder EmptyBT = []
flattenBTPostOrder (NodeBT n lt rt) = flattenBTInOrder lt ++ flattenBTInOrder rt ++ [n]
-- np ghci> flattenBTPostOrder (NodeBT 1 (NodeBT 2 EmptyBT EmptyBT) (NodeBT 3 EmptyBT EmptyBT))

-- Napisać definicje następujących funkcji

-- funkcja map dla drzewa binarnego
mapBT :: (a -> b) -> BinTree a -> BinTree b 
mapBT _ EmptyBT = EmptyBT
mapBT f (NodeBT n lt rt) = NodeBT (f n) (mapBT f lt) (mapBT f rt)

-- insert element into BinTree
insert :: Ord a => a -> BinTree a -> BinTree a 
insert n EmptyBT = NodeBT n EmptyBT EmptyBT
insert n (NodeBT parent lt rt) = 
    if n <= parent 
    then NodeBT parent (insert n lt) rt  
    else NodeBT parent lt (insert n rt) 

-- list to Binary Search Tree (BST)
list2BST :: Ord a => [a] -> BinTree a
list2BST lis = foldr insert EmptyBT lis

-- Rozszerzyć definicję typu data Expr a o operacje odejmowania i mnożenia oraz zmodyfikować odpowiednio funkcje show' i eval

data Expr' a = Lit' a |
              Add' (Expr' a) (Expr' a) |
              Difference' (Expr' a) (Expr' a) |
              Multiply' (Expr' a) (Expr' a) 

eval' :: Num a => Expr' a -> a
eval' (Lit' n) = n
eval' (Add' e1 e2) = eval' e1 + eval' e2
eval' (Difference' e1 e2) = eval' e1 - eval' e2
eval' (Multiply' e1 e2) = eval' e1 * eval' e2


show'' :: Show a => Expr' a -> String
show'' (Lit' n) = show n
show'' (Add' e1 e2) = "(" ++ show'' e1 ++ "+" ++ show'' e2 ++ ")"
show'' (Difference' e1 e2) = "(" ++ show'' e1 ++ "-" ++ show'' e2 ++ ")"
show'' (Multiply' e1 e2) = "(" ++ show'' e1 ++ "*" ++ show'' e2 ++ ")"