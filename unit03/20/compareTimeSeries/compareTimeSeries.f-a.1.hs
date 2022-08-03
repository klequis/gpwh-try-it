-- Incorporate some of f-a's tips

{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use newtype instead of data" #-}
import Data.List (intersectBy)

file1 :: [(Int,Double)]
file1 = [ (1,200.1), (2,199.5), (3,199.4)
        , (4,198.9), (5,199.0), (6,200.2)
        , (9,200.3),(10,201.2), (12, 202.9)]

file2 :: [(Int,Double)]
file2 = [(11,201.6), (12,201.5), (13, 201.5)
        ,(14, 203.5), (15, 204.9), (16, 207.1)
        ,(18, 210.5), (20, 208.8)]

file3 :: [(Int,Double)]
file3 = [(10, 201.2),(11, 201.6),(12, 199.5)
        ,(13, 197.5),(14, 197.5),(17, 210.5)
        ,(24, 215.1),(25, 218.7)]

file4 :: [(Int,Double)]
file4 = [(26, 219.8), (27,220.5),(28,223.8)
        ,(29, 222.8), (30, 223.8),(31, 221.7)
        ,(32, 222.3), (33, 220.8),(34, 219.4)
        ,(35, 220.1),(36, 220.6)]

data Time = Time (Int,Double)
data Times a = Times [Time]

fileToTimes :: [(Int,Double)] -> Times a
fileToTimes file = Times (map Time file)

instance Show Time where
  show (Time (t,v)) = "(" ++ show t ++ ", " ++ show v ++ ")"

instance Show (Times a) where
  show (Times time) = concatMap (\(Time t) -> show t) time

compareDates :: Time -> Time -> Ordering
compareDates (Time t1) (Time t2)
        | date1 > date2 = GT
        | date1 < date2 = LT
        | otherwise = EQ
  where date1 = fst t1
        date2 = fst t2

areDatesEqual :: Time -> Time -> Bool
areDatesEqual time1 time2 = compareDates time1 time2 == EQ

instance Eq Time where
  (==) (Time t1) (Time t2) 
           | fst t1 == fst t2 = True
           | otherwise = False

makeDiffs :: Times a -> Times a -> [(Time, Time)]
makeDiffs (Times time1) (Times time2) = zippedSets
  where matchedDates = intersectBy areDatesEqual time1 time2
        dates = map (\(Time t) -> fst t) matchedDates
        set1 = filter (\(Time t) -> fst t `elem` dates) time1
        set2 = filter (\(Time t) -> fst t `elem` dates) time2
        zippedSets = zip set1 set2

-- Creates one row such as: "(1,2.5), (2,3.5) | -1.0"
makeLine :: Time -> Time -> String
makeLine (Time time1) (Time time2) = strFinal
  where strTime1 = show time1
        strTime2 = show time2
        diff = snd time1 - snd time2
        strFinal = concat [strTime1, ", ", strTime2, " | ", show diff, "\n"]

printIt :: [String] -> IO ()
printIt x = putStrLn (concat x)

findDiffs :: [(Int, Double)] -> [(Int, Double)] -> [String]
findDiffs f1 f2 = lines
  where series1 = fileToTimes f1
        series2 = fileToTimes f2
        diffs = makeDiffs series1 series2
        lines = map (\diff -> makeLine (fst diff) (snd diff)) diffs
