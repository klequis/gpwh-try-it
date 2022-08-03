-- https://wiki.haskell.org/Foldr_Foldl_Foldl'

import Prelude hiding (foldr, foldl)

veryBigList = [1..1000000]

foldr f z []     = z
foldr f z (x:xs) = x `f` foldr f z xs

sum1 = foldr (+) 0

try1 = sum1 veryBigList