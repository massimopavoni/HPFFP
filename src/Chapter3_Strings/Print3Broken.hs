module Chapter3_Strings.Print3Broken where

printSecond :: IO ()
printSecond = do
  putStrLn greeting

main :: IO ()
main = do
  putStrLn greeting
  printSecond

greeting :: String
greeting = "Yarrrrr"