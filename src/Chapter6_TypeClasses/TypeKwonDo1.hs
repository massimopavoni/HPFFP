module Chapter6_TypeClasses.TypeKwonDo1 where

arith :: Num b => (a -> b) -> Integer -> a -> b
arith aToB n = (^ n) . aToB