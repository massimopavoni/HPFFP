module Chapter10_FoldingLists.DatabaseProcessing where

import Data.Time
  ( UTCTime (UTCTime),
    fromGregorian,
    secondsToDiffTime,
  )

data DatabaseItem
  = DbString String
  | DbNumber Integer
  | DbDate UTCTime
  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123)),
    DbNumber 9001,
    DbString "Hello, world!",
    DbDate (UTCTime (fromGregorian 1921 5 1) (secondsToDiffTime 34123))
  ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr onlyDates []
  where
    onlyDates (DbDate d) l = d : l
    onlyDates _ l = l

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr onlyNumbers []
  where
    onlyNumbers (DbNumber n) l = n : l
    onlyNumbers _ l = l

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = foldr latestDate (UTCTime (fromGregorian 0 0 0) (secondsToDiffTime 0))
  where
    latestDate (DbDate d) sd
      | d > sd = d
      | otherwise = sd
    latestDate _ sd = sd

sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber

avgDb :: [DatabaseItem] -> Double
avgDb db = fromIntegral (sum dbNumbers) / fromIntegral (length dbNumbers)
  where
    dbNumbers = filterDbNumber db