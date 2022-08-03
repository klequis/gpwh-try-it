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


-- removing type parameter `a`
data Time = Time (Int,Double)
-- alias Times 
type Times = [Time]

fileToTimes :: [(Int,Double)] -> Times
                 -- remove Times constructor
fileToTimes file = map Time file

instance Show Time where
  show (Time (t,v)) = "(" ++ show t ++ ", " ++ show v ++ ")"

-- Show Times is equivalent with the previous Show Times definition; and no
-- longer necessary.


-- deriving `Eq` for Time, thus `areDatesEqual` and `comparaDates`
-- functions are no longer needed. (Ord was only used to check equality)
instance Eq Time where
  (Time (date1,_)) == (Time (date2,_)) = date1 == date2


makeDiffs :: Times -> Times -> [(Time, Time)]
makeDiffs time1 time2 = zippedSets
                       -- replaced with `==`
  where matchedDates = intersectBy (==) time1 time2
              -- use more pattern matching to get rid of `fst`
        dates = map (\(Time (date,_)) -> date) matchedDates
        set1 = filter (\(Time (date,_)) -> date `elem` dates) time1
        set2 = filter (\(Time (date,_)) -> date `elem` dates) time2
        zippedSets = zip set1 set2


makeLine :: Time -> Time -> String
         -- previously it wasn't using the Show Time instance because
         -- time1/time2 were pointing at the tuple (Int,Double) directly
makeLine time1@(Time (_,snd1)) time2@(Time (_,snd2)) = strFinal
  where strTime1 = show time1
        strTime2 = show time2
             -- got rid of snd calls
        diff = snd1 - snd2
        strFinal = concat [strTime1, ", ", strTime2, " | ", show diff, "\n"]

printIt :: [String] -> IO ()
printIt x = putStrLn (concat x)

findDiffs :: [(Int, Double)] -> [(Int, Double)] -> [String]
findDiffs f1 f2 = lines
        -- inline series1/series2 definitions
  where diffs = makeDiffs (fileToTimes f1) (fileToTimes f2)
                  -- uncurry makeLine == \(a,b) -> makeLine a b
        lines = map (uncurry makeLine) diffs