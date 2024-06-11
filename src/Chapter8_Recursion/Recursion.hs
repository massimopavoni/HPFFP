module Chapter8_Recursion.Recursion where

sumTo :: (Eq t, Num t) => t -> t
sumTo 1 = 1
sumTo n = n + sumTo (n - 1)

multWithSum :: (Integral a) => a -> a -> a
multWithSum x y = go x y 0
  where
    go _ 0 n = n
    go a b n = go a (b - 1) (n + a)

data DivisionResult = Result Integer | DividedByZero
  deriving (Show)

divBy :: (Integral a) => a -> a -> DivisionResult
divBy num denom
  | denom == 0 = DividedByZero
  | otherwise = Result (go num denom 0)
  where
    go n d count
      | d < 0 = -go n (-d) count
      | n < 0 = -go (-n) d count
      | n < d = count
      | otherwise = go (n - d) d (count + 1)

mc91 :: (Ord t, Num t) => t -> t
mc91 n
  | n > 100 = n - 10
  | otherwise = mc91 (mc91 (n + 11))