module Chapter2_HelloHaskell.WaxOn where

waxOn :: Integer
waxOn = x * 5
  where
    z = 7
    y = z + 8
    x = y ^ (2 :: Integer)

triple :: Num a => a -> a
triple x = x * 3

waxOff :: Num a => a -> a
waxOff x = triple x ^ (2 :: Integer)