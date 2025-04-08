module Chapter12_SignalingAdversity.ItsOnlyNatural where

data Nat
  = Zero
  | Succ Nat
  deriving (Eq, Show)

natToInteger :: Nat -> Integer
natToInteger Zero = 0
natToInteger (Succ n) = 1 + natToInteger n

integerToNat :: Integer -> Maybe Nat
integerToNat n
  | n < 0 = Nothing
  | n == 0 = Just Zero
  | otherwise = Just $ integerToNat' n
  where
    integerToNat' 0 = Zero
    integerToNat' nn = Succ . integerToNat' $ nn - 1
