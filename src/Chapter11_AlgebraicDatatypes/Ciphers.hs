module Chapter11_AlgebraicDatatypes.Ciphers where

import Data.Char (chr, ord)


strord :: String -> [Int]
strord = map (subtract 97 . ord)

unstrord :: [Int] -> String
unstrord = map (chr . (+ 97))

vigenere :: String -> String -> String
vigenere key =
  unstrord
    . zipWith (((`mod` 26) .) . (+)) (cycle (strord key))
    . strord

unVigenere :: String -> String -> String
unVigenere key =
  unstrord
    . zipWith (((`mod` 26) .) . flip (-)) (cycle (strord key))
    . strord
