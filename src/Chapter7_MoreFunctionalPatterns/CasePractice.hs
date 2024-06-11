module Chapter7_MoreFunctionalPatterns.CasePractice where

functionC :: (Ord a) => a -> a -> a
functionC = max

fEvenAdd2 :: (Integral a) => a -> a
fEvenAdd2 n = if even n then n + 2 else n

nums :: (Ord a1, Num a1, Num a2) => a1 -> a2
nums x = case compare x 0 of
  LT -> -1
  EQ -> 0
  GT -> 1