module Chapter12_SignalingAdversity.ValidateTheWord where

import Control.Arrow (second, (&&&), (>>>))
import Data.Bool (bool)
import Data.List (partition)
import Data.Tuple.Extra (both)

newtype Word'
  = Word' String
  deriving (Eq, Show)

isVowel :: Char -> Bool
isVowel = (`elem` "aeiouAEIOU")

mkWord :: String -> Maybe Word'
mkWord =
  (Just . Word') &&& partition isVowel
    >>> second (uncurry (<=) . both length)
    >>> uncurry (bool Nothing)