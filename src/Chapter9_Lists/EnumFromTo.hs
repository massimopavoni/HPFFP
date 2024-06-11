module Chapter9_Lists.EnumFromTo where

eftBool :: Bool -> Bool -> [Bool]
eftBool = eft

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = eft

eftInt :: Int -> Int -> [Int]
eftInt = eft

eftChar :: Char -> Char -> [Char]
eftChar = eft

eft :: (Ord t, Enum t) => t -> t -> [t]
eft f t
  | f > t = []
  | f == t = [f]
  | otherwise = f : eft (succ f) t