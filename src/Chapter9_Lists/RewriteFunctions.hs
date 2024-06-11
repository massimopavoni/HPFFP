module Chapter9_Lists.RewriteFunctions where

myOr :: [Bool] -> Bool
myOr = or

-- myOr = foldr (||) False
-- myOr [] = False
-- myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny p (x : xs) = p x || myAny p xs

myElem :: (Eq a) => a -> [a] -> Bool
myElem x = foldr (\y -> (||) (x == y)) False

-- myElem x [] = False
-- myElem x (y : ys) = x == y || myElem x ys

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
squish = concat

-- squish = foldr (++) []
-- squish [] = []
-- squish (x : xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x : xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [] = error "Empty list"
myMaximumBy _ [x] = x
myMaximumBy f (x : y : xs) = case f x y of
  GT -> myMaximumBy f (x : xs)
  _ -> myMaximumBy f (y : xs)

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ [] = error "Empty list"
myMinimumBy _ [x] = x
myMinimumBy f (x : y : xs) = case f x y of
  LT -> myMinimumBy f (x : xs)
  _ -> myMinimumBy f (y : xs)

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare