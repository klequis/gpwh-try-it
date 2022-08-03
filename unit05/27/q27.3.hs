import qualified Data.Map as Map

data RobotPart = RobotPart
  { name :: String
  , description :: String
  , cost :: Double
  , count :: Int
  } deriving Show

leftArm :: RobotPart
leftArm = RobotPart
  { name = "left arm"
  , description = "left arm for face punching!"
  , cost = 1000.00
  , count = 3
  }

rightArm :: RobotPart
rightArm = RobotPart
  { name = "right arm"
  , description = "right arm for kind hand gestures"
  , cost = 1025.00
  , count = 5
  }

robotHead :: RobotPart
robotHead = RobotPart
  { name = "robot head"
  , description = "this head looks mad"
  , cost = 5092.25
  , count = 2
  }

partsDB :: Map.Map Int RobotPart
partsDB = Map.fromList keyVals
  where keys = [1,2,3]
        vals = [leftArm,rightArm,robotHead]
        keyVals = zip keys vals

{- 
    Me v1
    -----
    - Good part number -> prints number correctly
    - bad part number  -> prints 0.0 :()
-}
-- partLookup :: Int -> Maybe RobotPart
-- partLookup pn = Map.lookup pn partsDB

-- costLookup :: Maybe RobotPart -> Double
-- costLookup (Just part) = cost part
-- costLookup Nothing = 0

-- main :: IO ()
-- main = do
--     putStrLn "Enter part number"
--     pn <- getLine -- pn is String
--     let part = partLookup (read pn) -- part is Maybe RobotPart
--     let c = costLookup part
--     print c


{-
    Me v2
    -----
    After looking at book solution I came-up with this.
    - good part number -> Just 1000.0 (want just number, not Just number)
    - bad part number  -> Nothing (book solution of printing String message is better)
-}
-- partLookup :: Int -> Maybe RobotPart
-- partLookup pn = Map.lookup pn partsDB

-- main :: IO ()
-- main = do
--     putStrLn "Enter part number"
--     pn <- getLine -- pn is String
--     let part = partLookup (read pn) -- part is Maybe RobotPart
--     let c = cost <$> part
--     print c

{-
    Book answer
    -----------
    Uses fmap (<$>) to map over part to  get cost.
    - good part number -> 1000.0  (correct)
    - bad part number  -> "item not found" (nicer than returning 0.0 or Nothing like I did)
-}

-- Note this function is returning `IO ()`
printCost :: Maybe Double -> IO ()
printCost Nothing = putStrLn "item not found"
printCost (Just cost)= print cost

main :: IO ()
main = do
    putStrLn "enter a part number"
    partNo <- getLine
    let part = Map.lookup (read partNo) partsDB
    printCost (cost <$> part)