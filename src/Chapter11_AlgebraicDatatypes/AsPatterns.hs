module Chapter11_AlgebraicDatatypes.AsPatterns where

import Data.Char (toUpper)

isSubseqOf :: (Eq a) => [a] -> [a] -> Bool
isSubseqOf [] _ = True
isSubseqOf _ [] = False
isSubseqOf xs@(x : xt) ys@(y : yt)
  | xs == ys = True
  | x == y = isSubseqOf xt yt
  | otherwise = isSubseqOf xs yt

capitalizeWords :: String -> [(String, String)]
capitalizeWords = capitalizeWords' . words
  where
    capitalizeWords' [] = []
    capitalizeWords' (w@(c : cs) : ws) = (w, toUpper c : cs) : capitalizeWords' ws
    capitalizeWords' _ = []

capitalizeWord :: String -> String
capitalizeWord [] = []
capitalizeWord (c : cs) = toUpper c : cs

capitalizeParagraph :: String -> String
capitalizeParagraph = unwords . capitalizeParagraph' True . words
  where
    capitalizeParagraph' _ [] = []
    capitalizeParagraph' b (w : ws) =
      (if b then capitalizeWord w else w) : capitalizeParagraph' (last w == '.') ws