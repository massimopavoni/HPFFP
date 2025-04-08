module Chapter12_SignalingAdversity.BinaryTree where

data BinaryTree a
  = Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

unfold :: (b -> Maybe (b, a, b)) -> b -> BinaryTree a
unfold f b = case f b of
  Nothing -> Leaf
  Just (bl, a', br) -> Node (unfold f bl) a' (unfold f br)

treeBuild :: Integer -> BinaryTree Integer
treeBuild n =
  unfold
    ( \m ->
        if m == n
          then Nothing
          else Just (m + 1, m, m + 1)
    )
    0