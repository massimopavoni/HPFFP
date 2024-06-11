module Chapter6_TypeClasses.MatchTheTypes where

import Data.List (sort)

i :: Num a => a
i = 1

i' :: Num a => a
i' = 1

f :: Float
f = 1.0

f' :: Fractional a => a
f' = 1.0

f'' :: Fractional a => a
f'' = 1.0

f''' :: RealFrac a => a
f''' = 1.0

freud :: a -> a
freud x = x

freud' :: Ord a => a -> a
freud' x = x

freud'' :: Int -> Int
freud'' x = x

myX :: Int
myX = 1

sigmund :: Int -> Int
sigmund _ = myX

sigmund' :: Int -> Int
sigmund' _ = myX

sigmund'' :: Int -> Int
sigmund'' _ = myX

jung :: Ord a => [a] -> a
jung = minimum

jung' :: [Int] -> Int
jung' = minimum

young :: [Char] -> Char
young = minimum

young' :: Ord a => [a] -> a
young' = minimum

mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
signifier xs = head (mySort xs)

signifier' :: [Char] -> Char
signifier' xs = head (mySort xs)
