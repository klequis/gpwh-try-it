{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import Data.Text.Internal.Search
import Data.List

alpha :: T.Text
alpha = "abcd\nefghijk\nlmnopqrst\nuvwxyz"

locateNewLines :: T.Text -> [Int]
locateNewLines = indices "\n"

addStartEnd :: T.Text -> [Int] -> [Int]
addStartEnd str indices = 0 : indices ++ [T.length  str]

dupNums :: (Eq a, Num a) => [a] -> [a]
dupNums xs = flatten  [if x == 0 || x == lst then [x] else [x,x] | x <- xs]
  where lst = last xs
        flatten = intercalate []

-- WILL IT FAIL WITH ODD NUMBER OF INTS?
toTuples :: [Int] -> [(Int, Int)]
toTuples [] = []
toTuples [_] = []
toTuples (x1:x2:xs) = (x1,x2) : toTuples xs

calcLnLengths' :: (Eq b, Num b) => (b, b) -> b
calcLnLengths' tup = if a == 0 then b else b - a - 1
   where a = fst tup
         b = snd tup

calcLnLengths :: [(Int, Int)] -> [Int]
calcLnLengths = map calcLnLengths'

calcLnStarts :: [Int] ->  [Int]
calcLnStarts indices = 0 : indicesPlus1
  where indicesPlus1 = map (+ 1) indices

main :: IO ()
main = do
    let newLnIndices = locateNewLines alpha
    let wStartEnd = addStartEnd alpha newLnIndices
    let wDups = dupNums wStartEnd
    let tups = toTuples wDups
    let diffs = calcLnLengths tups
    let starts = calcLnStarts newLnIndices
    print starts



combineIt [] new = [] <> [new]
combineIt cur new = cur <> [new]

start xs str = []
  where tup = [getIt (str, x)  | x <- xs]

a :: [Char -> [Char]]
a = map combineIt ["aa","bb"]

{-
    input
    1) String: Original String
    2) Int   : the number of characters to take from 1)
    output
    3) String: Original String - modified
    4) String: String taken from original String
-}
getIt :: (T.Text, Int) -> (T.Text, T.Text)
getIt (str, x) = (T.take x str, T.drop (x+2) str)

-- foldr (a -> b -> b) b (t a)
b = foldr (\x -> (<> [x])) [] ["aa","bb"]

-- not work: c = [((T.drop x alpha) . (T.take x alpha)) | x <- [4,7]]

tup :: ([Char], Integer)
tup = ("abcd\nefghijk\nlmnopqrstuvwxyz", 4)

c :: T.Text -> T.Text
c = T.drop 4 -- alpha


d :: T.Text -> T.Text
d = T.take 4 -- alpha

e :: T.Text -> T.Text
e = c . d

f = e alpha

g = getIt (alpha, 4)

h = map id [(alpha, 4)]

