module Chapter11_AlgebraicDatatypes.RecordSyntax where

data Person = Person
  { name :: String,
    age :: Int
  }
  deriving (Eq, Show)

jm :: Person
jm = Person "julie" 108

ca :: Person
ca = Person "chris" 16