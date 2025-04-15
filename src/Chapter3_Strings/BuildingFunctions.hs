module Chapter3_Strings.BuildingFunctions where

import Safe (tailErr)

add :: [a] -> [a] -> [a]
add = (++)

element :: [a] -> Int -> a
element = (!!)

rest :: Int -> [a] -> [a]
rest = drop

-- Meme
rest' :: (Eq t, Num t) => [a] -> t -> [a]
rest' s n
  | n == 1 = tailErr s
  | otherwise = rest' (tailErr s) (n - 1)

thirdLetter :: [a] -> a
thirdLetter s = s !! 2

letterIndex :: Int -> Char
letterIndex n = "Curry is awesome!" !! (n - 1)

rvrs :: [Char]
rvrs = concat [drop 9 cia, " ", take 2 $ drop 6 cia, " ", take 5 cia]
  where
    cia = "Curry is awesome"