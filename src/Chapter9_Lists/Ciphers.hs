module Chapter9_Lists.Ciphers where

import Data.Char (chr, ord)

caesar :: Int -> String -> String
caesar n = map (chr . (+97) . (`mod` 26) . (+ n) . subtract 97 . ord)

unCaesar :: Int -> String -> String
unCaesar n = map (chr . (+97) . (`mod` 26) . subtract n . subtract 97 . ord)