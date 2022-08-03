-- myReverse [] = []
-- myReverse (x:xs) = xs ++ [x] ++ myReverse xs
  -- where idxLast = length xs - 1

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (xs) = xs !! idxLast : myReverse xsRest
  where idxLast = length xs - 1
        xsRest = take idxLast xs

bookReverse :: [a] -> [a]
bookReverse [] = []
bookReverse (x:[]) = [x]
bookReverse (x:xs) = (myReverse xs) ++ [x]