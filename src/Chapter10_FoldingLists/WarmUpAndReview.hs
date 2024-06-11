module Chapter10_FoldingLists.WarmUpAndReview where

stops :: String
stops = "pbtdkg"

vowels :: String
vowels = "aeiou"

threeLetterCombos :: [(Char, Char, Char)]
threeLetterCombos = [(a, b, c) | a <- stops, b <- vowels, c <- stops]

threeLetterCombosStartingWithP :: [(Char, Char, Char)]
threeLetterCombosStartingWithP = filter (\(a, _, _) -> a == 'p') threeLetterCombos

nouns :: [String]
nouns = ["dog", "cat", "bird", "fish"]

verbs :: [String]
verbs = ["run", "swim", "fly", "walk"]

shortWordsCombos :: [(String, String, String)]
shortWordsCombos = [(a, b, c) | a <- nouns, b <- verbs, c <- nouns]