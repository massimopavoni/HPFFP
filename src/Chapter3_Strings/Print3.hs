module Chapter3_Strings.Print3 where

myGreeting :: [Char]
myGreeting = "Hello" ++ " World!"

hello :: [Char]
hello = "Hello"

world :: [Char]
world = "World!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where
    secondGreeting = concat [hello, " ", world]