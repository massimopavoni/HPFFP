module Chapter6_TypeClasses.Identity where

newtype Identity a = Identity a

instance Eq a => Eq (Identity a) where
  (==) :: Eq a => Identity a -> Identity a -> Bool
  (==) (Identity v) (Identity v') = v == v'