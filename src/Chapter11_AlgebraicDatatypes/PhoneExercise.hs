module Chapter11_AlgebraicDatatypes.PhoneExercise where

import Data.Char (isUpper, toLower)
import Data.List (elemIndex, group, sort, sortOn)
import Data.Maybe (fromJust, isJust)
import Safe (headErr)

type DaPhone = [Button]

data Button = Button {digit :: Digit, chars :: String} deriving (Show)

type Digit = Char

type Presses = Int

phone :: DaPhone
phone =
  [ Button '1' "1",
    Button '2' "abc2",
    Button '3' "def3",
    Button '4' "ghi4",
    Button '5' "jkl5",
    Button '6' "mno6",
    Button '7' "pqrs7",
    Button '8' "tuv8",
    Button '9' "wxyz9",
    Button '*' "",
    Button '0' " 0",
    Button '#' "."
  ]

findButton :: Char -> DaPhone -> (Digit, Presses)
findButton _ [] = error "Char not found"
findButton c ((Button d cs) : bs) =
  let cp = elemIndex c cs
   in if isJust cp
        then (d, fromJust cp + 1)
        else findButton c bs

reverseTaps :: Char -> [(Digit, Presses)]
reverseTaps c =
  let ts = [findButton (toLower c) phone]
   in if isUpper c then ('*', 1) : ts else ts

cellPhonesDead :: String -> [(Digit, Presses)]
cellPhonesDead = concatMap reverseTaps

fingerTaps :: [(Digit, Presses)] -> Presses
fingerTaps = sum . map snd

mostPopular :: (Ord a) => [a] -> a
mostPopular = headErr . last . sortOn length . group . sort

mostPopularLetter :: String -> Char
mostPopularLetter = mostPopular

coolestLtr :: [String] -> Char
coolestLtr = mostPopularLetter . concat

coolestWord :: [String] -> String
coolestWord = mostPopular . concatMap words

convo :: [String]
convo =
  [ "Wanna play 20 questions",
    "Ya",
    "U 1st haha",
    "Lol OK. Have u ever tasted alcohol",
    "Lol ya",
    "Wow ur cool haha. Ur turn",
    "OK. Do u think I am pretty Lol",
    "Lol ya",
    "Just making sure rofl ur turn"
  ]