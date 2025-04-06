module Chapter11_AlgebraicDatatypes.BinaryTree where

data BinaryTree a
  = Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b
mapTree _ Leaf = Leaf
mapTree f (Node left a right) = Node (mapTree f left) (f a) (mapTree f right)

testTree' :: BinaryTree Integer
testTree' = Node (Node Leaf 3 Leaf) 1 (Node Leaf 4 Leaf)

mapExpected :: BinaryTree Integer
mapExpected = Node (Node Leaf 4 Leaf) 2 (Node Leaf 5 Leaf)

mapOkay :: IO ()
mapOkay =
  if mapTree (+ 1) testTree' == mapExpected
    then print "yup OK!"
    else error "test failed!"

preorder :: BinaryTree a -> [a]
preorder Leaf = []
preorder (Node left a right) = a : inorder left ++ inorder right

inorder :: BinaryTree a -> [a]
inorder Leaf = []
inorder (Node left a right) = preorder left ++ a : preorder right

postorder :: BinaryTree a -> [a]
postorder Leaf = []
postorder (Node left a right) = postorder left ++ postorder right ++ [a]

testTree :: BinaryTree Integer
testTree = Node (Node Leaf 1 Leaf) 2 (Node Leaf 3 Leaf)

testPreorder :: IO ()
testPreorder =
  putStrLn
    ( if preorder testTree == [2, 1, 3]
        then "Preorder fine!"
        else "Bad news bears."
    )

testInorder :: IO ()
testInorder =
  putStrLn
    ( if inorder testTree == [1, 2, 3]
        then "Inorder fine!"
        else "Bad news bears."
    )

testPostorder :: IO ()
testPostorder =
  putStrLn
    ( if postorder testTree == [1, 3, 2]
        then "Postorder fine!"
        else "Bad news bears"
    )

foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree _ acc Leaf = acc
foldTree f acc (Node left a right) = foldTree f (f a (foldTree f acc left)) right
