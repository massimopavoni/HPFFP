module Chapter10_FoldingLists.RewriteFunctionsUsingFold where

myOr :: [Bool] -> Bool
myOr = or

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr (\a b -> f a || b) False

myElem :: (Eq a) => a -> [a] -> Bool
myElem e = foldr (\a b -> a == e || b) False

myElem' :: (Eq a) => a -> [a] -> Bool
myElem' = elem

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myMap :: (a -> b) -> [a] -> [b]
myMap = map

squish :: [[a]] -> [a]
squish = concat

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\a b -> f a ++ b) []

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (t -> t -> Ordering) -> [t] -> t
myMaximumBy f xs = foldr (\a b -> if f a b == GT then a else b) (last xs) xs

myMinimumBy :: (t -> t -> Ordering) -> [t] -> t
myMinimumBy f xs = foldr (\a b -> if f a b == LT then a else b) (last xs) xs