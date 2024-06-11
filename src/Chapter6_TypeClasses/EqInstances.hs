module Chapter6_TypeClasses.EqInstances where

newtype TisAnInteger
  = TisAn Integer

instance Eq TisAnInteger where
  (==) :: TisAnInteger -> TisAnInteger -> Bool
  (==) (TisAn x) (TisAn x') = x == x'

data TwoIntegers
  = Two Integer Integer

instance Eq TwoIntegers where
  (==) :: TwoIntegers -> TwoIntegers -> Bool
  (==) (Two x y) (Two x' y') = x == x' && y == y'

data StringOrInt
  = TisAnInt Int
  | TisAString String

instance Eq StringOrInt where
  (==) :: StringOrInt -> StringOrInt -> Bool
  (==) (TisAnInt x) (TisAnInt x') = x == x'
  (==) (TisAString x) (TisAString x') = x == x'
  (==) _ _ = False

data Pair a
  = Pair a a

instance Eq a => Eq (Pair a) where
  (==) :: Eq a => Pair a -> Pair a -> Bool
  (==) (Pair x y) (Pair x' y') = x == x' && y == y'

data Tuple a b
  = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) :: (Eq a, Eq b) => Tuple a b -> Tuple a b -> Bool
  (==) (Tuple x y) (Tuple x' y') = x == x' && y == y'

data Which a
  = ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
  (==) :: Eq a => Which a -> Which a -> Bool
  (==) (ThisOne x) (ThisOne x') = x == x'
  (==) (ThatOne x) (ThatOne x') = x == x'
  (==) _ _ = False

data EitherOr a b
  = Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) :: (Eq a, Eq b) => EitherOr a b -> EitherOr a b -> Bool
  (==) (Hello x) (Hello x') = x == x'
  (==) (Goodbye x) (Goodbye x') = x == x'
  (==) _ _ = False