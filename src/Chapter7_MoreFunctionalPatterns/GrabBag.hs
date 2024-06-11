module Chapter7_MoreFunctionalPatterns.GrabBag where

mTh :: Num a => a -> a -> a -> a
mTh x y z = x * y * z

addOneIfOdd :: Integral a => a -> a
addOneIfOdd n = if odd n then (+ 1) n else n

addFive :: (Num a, Ord a) => a -> a -> a
addFive x y = min x y + 5

mflip :: (a -> b -> c) -> b -> a -> c
mflip = flip