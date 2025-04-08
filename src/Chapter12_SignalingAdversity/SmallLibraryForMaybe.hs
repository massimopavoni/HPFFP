module Chapter12_SignalingAdversity.SmallLibraryForMaybe where

import Data.Maybe (fromJust)

isJust :: Maybe a -> Bool
isJust Nothing = False
isJust (Just _) = True

isNothing :: Maybe a -> Bool
isNothing Nothing = True
isNothing (Just _) = False

mayybee :: b -> (a -> b) -> Maybe a -> b
mayybee d _ Nothing = d
mayybee _ f (Just v) = f v

fromMaybe :: a -> Maybe a -> a
fromMaybe d Nothing = d
fromMaybe _ (Just v) = v

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x : _) = Just x

maybeToList :: Maybe a -> [a]
maybeToList Nothing = []
maybeToList (Just x) = [x]

catMaybes :: [Maybe b] -> [b]
catMaybes = map fromJust . filter isJust

flipMaybe :: [Maybe a] -> Maybe [a]
flipMaybe xs =
  let ys = catMaybes xs
   in if length xs == length ys
        then Just ys
        else Nothing