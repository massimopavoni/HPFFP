module Chapter4_BasicDatatypes.AllAwesome where

awesome :: [String]
awesome = ["Papuchon", "curry", ":)"]

also :: [String]
also = ["Quake", "The Simons"]

allAwesome :: [[String]]
allAwesome = [awesome, also]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome list = list == reverse list

myAbs :: (Ord a, Num a) => a -> a
myAbs n = if n >= 0 then n else -n

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))