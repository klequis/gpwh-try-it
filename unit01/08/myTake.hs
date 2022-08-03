{-
  1. [...] length of n
  2. take one more
  3. 
    a) [..].length < n
    b) [...].length == n

-}

-- my version
myTake :: (Eq a1, Num a1) => a1 -> [a2] -> [a2]
myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x : myTake (n - 1) xs

-- books version
myTake1 :: (Eq a1, Num a1) => a1 -> [a2] -> [a2]
myTake1 _ [] = []
myTake1 0 _ = []
myTake1 n (x:xs) = x:rest
  where rest = myTake (n - 1) xs
