module Chapter5_Types.TypeKwonDo2 where

data A

data B

data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e = w . q