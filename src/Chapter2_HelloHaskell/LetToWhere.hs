module Chapter2_HelloHaskell.LetToWhere where

arith1 :: Integer
arith1 = x * 3 + y
  where
    x = 3
    y = 1000

arith2 :: Integer
arith2 = x * 5
  where
    y = 10
    x = 10 * 5 + y

arith3 :: Double
arith3 = z / x + y
  where
    x = 7
    y = -x
    z = y * 10
