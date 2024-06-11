module Main where

import Tree

main :: IO ()
main = do
    let tree = Node 1 (Node 2 Empty (Node 3 Empty Empty)) (Node 4 Empty Empty)
    print $ treeMap (*2) tree
