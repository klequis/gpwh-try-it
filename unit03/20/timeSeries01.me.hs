{-
    My code differs from the book's code as I missed a step. However,
    it works and perhaps a bit better since it works with `fileX` and
    there is no need to hardcode `ts1` to `ts4` in the code.
-}

{-
    Issues to solve
    - Across files, data is not in date order
    - There may be two data points for the same date with
      different values
      - Solution: last one wins
   
    Step 1
    - Combine all 4 files eliminiting duplicates by using a `Map`. Given how
      `Map` works the last value for a given date will be preserved.
    - `Map` expects a key and value and `Maybe` won't work for the value. So,
      create a helper function that will convert `Maybe` to a value. `insertMaybePair`.
    
    Step 2
    - Make `TS a` an instance of `Semigroup`

    Step 3
    - Make `TS a` an instance of `Monoid` 
-}

import Data.List ()
import qualified Data.Map as Map
import Data.Semigroup ()
import Data.Maybe ( fromJust, isJust )
import System.Posix (fileSize)

file1 :: [(Int,Double)]
file1 = [ (1,200.1), (2,199.5), (3,199.4)
        , (4,198.9), (5,199.0), (6,200.2)
        , (9,200.3),(10,201.2), (12, 202.9)]

file2 :: [(Int,Double)]
file2 = [(11,201.6), (12,201.5), (13, 201.5)
        ,(14, 203.5), (15, 204.9), (16, 207.1)
        ,(18, 210.5), (20, 208.8)]

file3 :: [(Int,Double)]
file3 = [(10, 201.2),(11, 201.6),(12, 201.5)
        ,(13, 201.5),(14, 203.5),(17, 210.5)
        ,(24, 215.1),(25, 218.7)]

file4 :: [(Int,Double)]
file4 = [(26, 219.8), (27,220.5),(28,223.8)
        ,(29, 222.8), (30, 223.8),(31, 221.7)
        ,(32, 222.3), (33, 220.8),(34, 219.4)
        ,(35, 220.1),(36, 220.6)]

{- -------------- -}

data TS a = TS [Int] [Maybe a]

showTVPair :: Show a => Int -> (Maybe a) -> String
showTVPair time (Just value) = mconcat [show time,"|",show value,"\n"]
showTVPair time Nothing = mconcat [show time,"|NA\n"]

instance Show a => Show (TS a) where
  show (TS times values) = mconcat rows
    where rows = zipWith showTVPair times values

createTS :: [Int] -> [a] -> TS a
createTS times values = TS completeTimes extendedValues
    where completeTimes = [minimum times .. maximum times]
          timeValueMap = Map.fromList (zip times values)
          extendedValues = map (\v -> Map.lookup v timeValueMap) completeTimes

fileToTS :: [(Int,a)] -> TS a
fileToTS tvPairs = createTS times values
    where (times, values) = unzip tvPairs

insertMaybePair :: Ord k => Map.Map k v -> (k, Maybe v) -> Map.Map k v
insertMaybePair myMap (_,Nothing) = myMap
insertMaybePair myMap (key,(Just value)) = Map.insert key value myMap

-- ** code copied from book is wrong. Use code from source code **
-- combineTS :: TS a -> TS a -> TS a
-- combineTS (TS [] []) ts2 = ts2
-- combineTS ts1 (TS [] []) = ts1
-- combineTS (TS t1 v1) (TS t2 v2) = TS completeTimes combinedValues
--   where bothTimes = mconcat [t1,t2]
--         completeTimes = [minimum bothTimes .. maximum bothTimes]
--         tvMap = foldl insertMaybePair Map.empty (zip t1 v1)
--         updatedMap = foldl insertMaybePair tvMap (zip t2 v2)
--         combinedValues = map (\v -> Map.lookup v updatedMap)

combineTS :: TS a -> TS a -> TS a
combineTS (TS [] []) ts2 = ts2 
combineTS ts1 (TS [] []) = ts1
combineTS (TS t1 v1) (TS t2 v2) = TS completeTimes combinedValues
   where combinedTimes = mconcat [t1,t2]
         completeTimes = [(minimum t1) .. (maximum t2)]
         tvMap = foldl insertMaybePair Map.empty (zip t1 v1)
         updatedMap = foldl insertMaybePair tvMap (zip t2 v2)
         combinedValues = map (\v -> Map.lookup v updatedMap) completeTimes

instance Semigroup (TS a) where
  (<>) = combineTS

instance Monoid (TS a) where
  mempty = TS [] []  -- identity
  mappend = (<>)     -- monoid append


tsAll :: [(Int, Double)]
tsAll = mconcat [file1,file2,file3,file4]

{-
    Given I did things differently than the book section 20.3 will not work
    with this code. Switch to the books code: timeSeriesBook.hs
-}


