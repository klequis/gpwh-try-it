{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import Data.Text.Internal.Search
import Data.List
import qualified Data.Text.IO as TIO

alpha :: T.Text
alpha = "abcd\nefghijk\nlmnopqrst\nuvwxyz"

newLnIndices :: T.Text -> [Int]
newLnIndices = indices "\n"

ends :: [Int] -> T.Text -> [Int]
ends indices alpha = indices ++ [T.length alpha]

starts :: [Int] ->  [Int]
starts indices = 0 : indicesPlus1
  where indicesPlus1 = map (+ 1) indices

lengths :: [Int] -> [Int] -> [Int]
lengths ends starts = map (\tup -> fst tup - snd tup) tups
    where tups = zip ends starts

startAndLen :: [Int] -> [Int] -> [(Int, Int)]
startAndLen starts lengths = zip starts lengths

substr :: Int -> Int -> T.Text -> T.Text
substr start stop alpha = (T.take stop . T.drop start) alpha

myLines :: [(Int,Int)] -> T.Text -> [T.Text]
myLines tups alpha = map (\tup -> substr (fst tup) (snd tup) alpha) tups

chkRemoveBOM :: T.Text -> T.Text
chkRemoveBOM txt = if T.take 1 txt == "\65279" then T.tail txt else txt

removeTrailingNewLn :: T.Text -> T.Text
removeTrailingNewLn txt = if T.last txt == '\n' then T.init txt else txt
  -- where isNewline = flip elem "\n"

main :: IO ()
main = do
  let file = "textDoc.txt"
  contents <- TIO.readFile file
  let txt = (removeTrailingNewLn . chkRemoveBOM) contents 
  print txt
  let i = newLnIndices txt
  let e = ends i txt
  let s = starts i
  let l = lengths e s
  let tupStartLen = zip s l
  print (myLines tupStartLen txt)
  print (T.unpack contents)