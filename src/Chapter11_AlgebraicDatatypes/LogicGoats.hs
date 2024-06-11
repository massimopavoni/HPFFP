module Chapter11_AlgebraicDatatypes.LogicGoats where

class TooMany a where
  tooMany :: a -> Bool

instance TooMany Int where
  tooMany :: Int -> Bool
  tooMany n = n > 42

instance TooMany (Int, String) where
  tooMany :: (Int, String) -> Bool
  tooMany (n, _) = tooMany n

instance TooMany (Int, Int) where
  tooMany :: (Int, Int) -> Bool
  tooMany (n, m) = tooMany (n + m)

instance (Num a, TooMany a) => TooMany (a, a) where
  tooMany :: (a, a) -> Bool
  tooMany (n, m) = tooMany n && tooMany m