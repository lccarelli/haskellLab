module Tree (Tree(..), treeMap) where

data Tree a = Empty
            | Node a (Tree a) (Tree a)
            deriving (Show, Eq)

foldTree :: (b -> a -> b -> b) -> b -> Tree a -> b
foldTree _ z Empty = z
foldTree f z (Node x left right) = f (foldTree f z left) x (foldTree f z right)

treeMap :: (a -> b) -> Tree a -> Tree b
treeMap f = foldTree (\l x r -> Node (f x) l r) Empty
