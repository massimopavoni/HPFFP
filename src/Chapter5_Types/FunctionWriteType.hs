module Chapter5_Types.FunctionWriteType where

functionH :: [a] -> a
functionH [] = error "empty list provided"
functionH (x : _) = x

functionC :: Ord a => a -> a -> Bool
functionC = (>)

functionS :: (a, b) -> b
functionS (_, y) = y