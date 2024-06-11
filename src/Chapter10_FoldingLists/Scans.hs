module Chapter10_FoldingLists.Scans where

fibs :: [Integer]
fibs = 1 : scanl (+) 1 fibs

fibs20 :: [Integer]
fibs20 = take 20 fibs

fibsLessThan100 :: [Integer]
fibsLessThan100 = takeWhile (< 100) fibs

factorial :: Int -> Integer
factorial n = scanl (*) 1 [1 ..] !! n