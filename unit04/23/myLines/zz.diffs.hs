import Data.List

allInts :: [Int]
allInts = [0,4,12,22,29]
xyz :: [(Int,Int)]
xyz = [(0,4), (4,12), (12,22), (22,29)]

diff :: (Eq a, Num a) => [a] -> [a]
diff xs = flatten  [if x == 0 || x == lst then [x] else [x,x] | x <- xs]
  where lst = last xs
        flatten = intercalate []

-- 
-- OK, need to:
   -- take 2
   -- subtract them
   -- drop 2
   -- repeat

calcDiff' :: (Eq b, Num b) => (b, b) -> b
calcDiff' tup = if a == 0 then b else b - a - 1
   where a = fst tup
         b = snd tup

calcDiff :: [(Int, Int)] -> [Int]
calcDiff = map calcDiff'

-- [0,4,4,12,12,22,22,29]


nums = [0,4,4,12,12,22,22,29]


-- WILL IT FAIL WITH ODD NUMBER OF INTS?
toTuples :: [Int] -> [(Int, Int)]
toTuples [] = []
toTuples [_] = []
toTuples (x1:x2:xs) = (x1,x2) : toTuples xs

d :: [(Int, Int)]
d = toTuples nums

e = map (\tup -> snd tup - fst tup) [(0,4),(4,12),(12,22),(22,29)]

