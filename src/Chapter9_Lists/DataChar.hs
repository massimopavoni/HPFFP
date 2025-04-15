module Chapter9_Lists.DataChar where

import Data.Char (isUpper, toUpper)
import Safe (headErr)

onlyUps :: String -> String
onlyUps = filter isUpper

capitalize :: String -> String
capitalize [] = []
capitalize (x : xs) = toUpper x : xs

capitalizeAll :: String -> String
capitalizeAll = map toUpper

capitalizeHead :: String -> Char
capitalizeHead = toUpper . headErr