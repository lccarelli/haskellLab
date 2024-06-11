module Main (main) where

import Test.Hspec
import Tree

main :: IO ()
main = hspec $ do
  describe "treeMap" $ do
    it "applies a function to every element in the tree" $ do
      let tree = Node 1 (Node 2 Empty (Node 3 Empty Empty)) (Node 4 Empty Empty)
      let expected = Node 2 (Node 4 Empty (Node 6 Empty Empty)) (Node 8 Empty Empty)
      treeMap (*2) tree `shouldBe` expected

    it "works with an empty tree" $ do
      treeMap (*2) Empty `shouldBe` (Empty :: Tree Int)
