module Chapter11_AlgebraicDatatypes.HuttonsRazor where

import Text.Printf (printf)

data Expr = Lit Integer | Add Expr Expr

eval :: Expr -> Integer
eval (Lit n) = n
eval (Add x y) = eval x + eval y

printExpr :: Expr -> String
printExpr (Lit n) = show n
printExpr (Add x y) = printf "%s + %s" (printExpr x) (printExpr y)