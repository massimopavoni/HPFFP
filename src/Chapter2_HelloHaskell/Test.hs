module Chapter2_HelloHaskell.Test where

sayHello :: String -> IO()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")
