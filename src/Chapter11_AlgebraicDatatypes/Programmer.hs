{-# LANGUAGE InstanceSigs #-}

module Chapter11_AlgebraicDatatypes.Programmer where

data OperatingSystem
  = GnuPlusLinux
  | OpenBSDPlusNevermindJustBSDStill
  | Mac
  | Windows
  deriving (Bounded, Enum, Eq, Show)

data ProgLang
  = Haskell
  | Agda
  | Idris
  | PureScript
  deriving (Bounded, Enum, Eq, Show)

data Programmer = Programmer OperatingSystem ProgLang
  deriving (Bounded, Eq, Show)

instance Enum Programmer where
  succ :: Programmer -> Programmer
  succ prog =
    if prog == maxBound
      then error "Programmer out of bounds"
      else toEnum (fromEnum prog + 1)

  pred :: Programmer -> Programmer
  pred prog =
    if prog == minBound
      then error "Programmer out of bounds"
      else toEnum (fromEnum prog + 1)

  fromEnum :: Programmer -> Int
  fromEnum (Programmer os lang) = fromEnum os * (fromEnum (maxBound :: ProgLang) + 1) + fromEnum lang

  toEnum :: Int -> Programmer
  toEnum n =
    if n < 0 || n > fromEnum (maxBound :: Programmer)
      then error "Programmer out of bounds"
      else Programmer (toEnum os) (toEnum lang)
    where
      (os, lang) = n `divMod` (fromEnum (maxBound :: ProgLang) + 1)

  enumFrom :: Programmer -> [Programmer]
  enumFrom x = enumFromTo x maxBound

  enumFromThen :: Programmer -> Programmer -> [Programmer]
  enumFromThen x y = enumFromThenTo x y bound
    where
      bound
        | fromEnum y >= fromEnum x = maxBound
        | otherwise = minBound

allProgrammers :: [Programmer]
allProgrammers = enumFrom minBound
