module Chapter3_Strings.Reverse where

rvrs :: [Char] -> [Char]
rvrs s = concat [drop 9 s, " ", take 2 $ drop 6 s, " ", take 5 s]

main :: IO ()
main = print $ rvrs "Curry is awesome"