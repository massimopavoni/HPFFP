module Chapter6_TypeClasses.DatatypeDeclarations where

newtype Rocks
  = Rocks String
  deriving (Eq, Ord, Show)

newtype Yeah
  = Yeah Bool
  deriving (Eq, Ord, Show)

data Papu
  = Papu Rocks Yeah
  deriving (Eq, Ord, Show)

phew :: Papu
phew = Papu (Rocks "chases") (Yeah True)

truth :: Papu
truth = Papu (Rocks "chomskydoz") (Yeah True)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'