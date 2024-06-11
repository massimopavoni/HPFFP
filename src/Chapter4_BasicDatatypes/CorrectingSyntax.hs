module Chapter4_BasicDatatypes.CorrectingSyntax where

x :: Int -> Int -> Int
x = (+)

f :: Foldable t => t a -> Int
f xs = w `x` 1
  where
    w = length xs

myId :: p -> p
myId x = x

g :: (a, b) -> a
g (a, b) = a