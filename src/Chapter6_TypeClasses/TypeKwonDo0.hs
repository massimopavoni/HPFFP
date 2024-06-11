module Chapter6_TypeClasses.TypeKwonDo0 where

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk aToB a = (==) (aToB a)