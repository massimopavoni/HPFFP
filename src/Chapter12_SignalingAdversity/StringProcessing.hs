module Chapter12_SignalingAdversity.StringProcessing where

import GHC.Utils.Misc (count)
import Safe (headErr)

replaceThe :: String -> String
replaceThe = unwords . replaceThe' . words
  where
    replaceThe' [] = []
    replaceThe' ("the" : ws) = "a" : replaceThe' ws
    replaceThe' (w : ws) = w : replaceThe' ws

isVowel :: Char -> Bool
isVowel = (`elem` "aeiouAEIOU")

countTheBeforeVowel :: String -> Integer
countTheBeforeVowel = countTheBeforeVowel' . words
  where
    countTheBeforeVowel' [] = 0
    countTheBeforeVowel' ("the" : w : ws)
      | isVowel $ headErr w = 1 + countTheBeforeVowel' ws
      | otherwise = countTheBeforeVowel' (w : ws)
    countTheBeforeVowel' (_ : ws) = countTheBeforeVowel' ws

countVowels :: String -> Int
countVowels = count isVowel