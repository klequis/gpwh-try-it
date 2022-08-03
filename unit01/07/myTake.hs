-- myTake 3 xs
myTake :: (Eq t, Num t) => t -> [a] -> [a]
myTake _ [] = []
myTake 0 _ = []
myTake num (x:xs) = x : myTake (num - 1) xs
