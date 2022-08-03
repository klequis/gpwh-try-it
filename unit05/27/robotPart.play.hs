import qualified Data.Map as Map
import Data.Maybe ( fromJust )
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

type Html = String

renderHtml :: RobotPart -> Html
renderHtml part = mconcat ["<h2>",partName, "</h2>"
                          ,"<p><h3>desc</h3>",partDesc
                          ,"</p><p><h3>cost</h3>"
                          ,partCost
                          ,"</p><p><h3>count</h3>"
                          ,partCount,"</p>"
                          ]
    where partName = name part
          partDesc = description part
          partCost = show (cost part)
          partCount = show (count part)

-- main :: Maybe (IO ())
-- main :: IO ()
-- getPartAsString :: Int -> String 

getPartAsString :: p -> String
getPartAsString pn = show (Map.lookup 1 partsDB)

zz :: [Char]
zz = "Hello"

jj :: String
jj = getPartAsString 1

-- main is not a function, it is an IO Action

main :: IO ()
main = do
  let output = renderHtml <$> Just leftArm
 --  putStrLn (show (Map.lookup 1 partsDB))
--   x <-      show (Map.lookup 1 partsDB)
  putStrLn "hi"
--   -- x <- show <$> fromJust (Map.lookup 1 partsDB)
  
--   -- 
  