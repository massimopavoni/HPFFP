module Chapter9_Lists.PoemLines where

separate :: (Eq p) => p -> [p] -> [[p]]
separate sep = go
  where
    go [] = []
    go xs = takeWhile (/= sep) xs : go (drop 1 . dropWhile (/= sep) $ xs)

myWords :: [Char] -> [[Char]]
myWords = separate ' '

firstSen :: String
firstSen = "Tyger Tyger, burning bright\n"

secondSen :: String
secondSen = "In the forests of the night\n"

thirdSen :: String
thirdSen = "What immortal hand or eye\n"

fourthSen :: String
fourthSen = "Could frame thy fearful symmetry?\n"

sentences :: [Char]
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

myLines :: String -> [String]
myLines = separate '\n'

shouldEqual :: [String]
shouldEqual = ["Tyger Tyger, burning bright", "In the forests of the night", "What immortal hand or eye", "Could frame thy fearful symmetry?"]

main :: IO ()
main = do
  putStrLn sentences
  putStrLn $ "Are they equal? " ++ if myLines sentences == shouldEqual then "Fuck yeah!" else "Hell no!"