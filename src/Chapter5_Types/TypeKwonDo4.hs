module Chapter5_Types.TypeKwonDo4 where

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xToY yToWZ = fst . yToWZ . xToY