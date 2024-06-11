module Chapter7_MoreFunctionalPatterns.LetsWriteCode where

tensDigit :: (Integral p) => p -> p
tensDigit x = d
  where
    xLast = x `div` 10
    d = xLast `mod` 10

tensDigit' :: (Integral p) => p -> p
tensDigit' x = d
  where
    xLast = fst . divMod x $ 10
    d = snd . divMod xLast $ 10

digit :: (Integral c) => c -> c -> c
digit n = flip mod 10 . flip div n

tensDigit'' :: Integer -> Integer
tensDigit'' = digit 10

hundredsDigit :: Integer -> Integer
hundredsDigit = digit 100

foldBool :: p -> p -> Bool -> p
foldBool x y b = if b then y else x

foldBool' :: p -> p -> Bool -> p
foldBool' x y b
  | b = y
  | otherwise = x

g :: (a -> b) -> (a, c) -> (b, c)
g f (x, y) = (f x, y)