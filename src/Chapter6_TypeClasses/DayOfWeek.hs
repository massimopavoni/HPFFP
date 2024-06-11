{-# LANGUAGE InstanceSigs #-}

module Chapter6_TypeClasses.DayOfWeek where

data DayOfWeek = Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Ord, Show)

data Date = Date DayOfWeek Int
  deriving (Ord, Show)

instance Eq DayOfWeek where
  (==) :: DayOfWeek -> DayOfWeek -> Bool
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False

instance Eq Date where
  (==) :: Date -> Date -> Bool
  (==) (Date weekDay dayOfMonth) (Date weekDay' dayOfMonth') = weekDay == weekDay' && dayOfMonth == dayOfMonth'
