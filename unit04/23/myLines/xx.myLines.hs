{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import Data.Text.Internal.Search

-- `(T.lines "this\nis\ninput")` | ["this","is","input"]

-- a working function but does the wrong thing?
myLines1 :: T.Text -> T.Text
myLines1 txt = if txt == T.empty then "" else r
  where h = T.pack [T.head txt]
        t = T.tail txt
        r = if h == " " then h <> "\n" <> myLines1 t else h <> myLines1 t

-- \n is treated as one character
-- Find Text in Text
alpha :: T.Text
alpha = "abcd\nefghijk\nlmnopqrst\nuvwxyz"

ints = indices "bb" "aabb\nabb"

y = T.take 5 "bobby"



z :: [Int]
z = indices "\n" alpha -- [0,11]

b = [T.take x alpha | x <- [4,7]]


-- something xs str = 

c = T.take 4 alpha
d = T.drop 4 alpha
e = T.take 7 d

appendIt a xs = xs ++ [a]
-- [] ++ ["aa"] ++ ["bb"]


ind = [4,7]

wordToList = map (\x -> [x] <> [])



main :: IO ()
main = do
  input <- getLine
  let t = myLines1 (T.pack input)
  print t