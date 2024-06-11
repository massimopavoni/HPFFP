{-# LANGUAGE InstanceSigs #-}

module Chapter6_TypeClasses.Trivial where

data Trivial = Trivial'

instance Eq Trivial where
  (==) :: Trivial -> Trivial -> Bool
  (==) Trivial' Trivial' = True