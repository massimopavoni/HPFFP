module Chapter5_Types.Sing where

fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing :: [Char]
sing = if x > y then fstString x else sndString y
  where
    x = "Singin"
    y = "Somewhere"

sing' :: [Char]
sing' = if x < y then fstString x else sndString y
  where
    x = "Singing"
    y = "Somewhere"
