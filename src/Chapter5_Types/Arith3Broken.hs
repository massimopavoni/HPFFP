module Chapter5_Types.Arith3Broken where

main :: IO ()
main = do
  print (1 + 2 :: Integer)
  putStrLn "10"
  print (negate (-1) :: Integer)
  print ((+) (0 :: Integer) blah)
  where
    blah = negate 1