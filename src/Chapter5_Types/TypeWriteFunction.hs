module Chapter5_Types.TypeWriteFunction where

myFunc :: (x -> y) -> (y -> z) -> c -> (a, x) -> (a, z)
myFunc xToY yToZ _ (x, y) = (x, (yToZ . xToY) y)

i :: a -> a
i x = x

c :: a -> b -> a
c x _ = x

c'' :: b -> a -> b
c'' x _ = x

c' :: a -> b -> b
c' _ y = y

r :: [a] -> [a]
r = reverse

co :: (b -> c) -> (a -> b) -> a -> c
co = (.)

co' :: (b -> c) -> (a -> b) -> a -> c
co' bToC aToB = bToC . aToB

a :: (a -> c) -> a -> a
a _ x = x

a' :: (a -> b) -> a -> b
a' aToB = aToB