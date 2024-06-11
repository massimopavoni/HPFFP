module Chapter8_Recursion.WordNumber where

import Data.List (intercalate)

digitToWord :: Int -> String
digitToWord = (!!) ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

digits :: Int -> [Int]
digits 0 = []
digits n = let (d, m) = divMod n 10 in digits d ++ [m]

wordNumber :: Int -> String
wordNumber = intercalate "-" . map digitToWord . digits