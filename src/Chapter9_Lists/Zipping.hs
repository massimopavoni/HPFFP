module Chapter9_Lists.Zipping where

zip' :: [a] -> [b] -> [(a, b)]
zip' = go []
  where
    go acc [] _ = acc
    go acc _ [] = acc
    go acc (x : xs) (y : ys) = (x, y) : go acc xs ys

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f = go []
  where
    go acc [] _ = acc
    go acc _ [] = acc
    go acc (x : xs) (y : ys) = f x y : go acc xs ys

zip'' :: [a] -> [b] -> [(a, b)]
zip'' = zipWith' (,)