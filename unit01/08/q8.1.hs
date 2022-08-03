myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:[]) = [x]
myReverse (x:xs) = myReverse xs ++ [x]

{-
    myReverse [1,2,3,4]
    produces
    [4] ++ [3] ++ [2] ++ [1]
-}