module Chapter9_Lists.DataChar where

import Data.Char (isUpper, toUpper)

onlyUps :: String -> String
onlyUps = filter isUpper

capitalize :: String -> String
capitalize [] = []
capitalize (x : xs) = toUpper x : xs

capitalizeAll :: String -> String
capitalizeAll = map toUpper

capitalizeHead :: String -> Char
capitalizeHead = toUpper . head