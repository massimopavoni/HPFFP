module Chapter12_SignalingAdversity.SmallLibraryForEither where

lefts' :: [Either a b] -> [a]
lefts' =
  foldr
    ( \e acc -> case e of
        Left a -> a : acc
        Right _ -> acc
    )
    []

rights' :: [Either a b] -> [b]
rights' =
  foldr
    ( \e acc -> case e of
        Left _ -> acc
        Right b -> b : acc
    )
    []

partitionEithers' :: [Either a b] -> ([a], [b])
partitionEithers' =
  foldr
    ( \e (ls, rs) -> case e of
        Left a -> (a : ls, rs)
        Right b -> (ls, b : rs)
    )
    ([], [])

eitherMaybe' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe' _ (Left _) = Nothing
eitherMaybe' f (Right b) = Just (f b)

either' :: (a -> c) -> (b -> c) -> Either a b -> c
either' l _ (Left a) = l a
either' _ r (Right b) = r b

eitherMaybe'' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe'' = either' (const Nothing) . (Just .)