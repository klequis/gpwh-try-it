{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Map as Map
import qualified Data.Text.IO as TIO
import qualified Data.Text as T

-- leftArm :: RobotPart
-- leftArm = RobotPart
--   { partId = 1
--   , name = "left arm"
--   , description = "left arm for face punching!"
--   , cost = 1000.00
--   }

-- rightArm :: RobotPart
-- rightArm = RobotPart
--   { partId = 2
--   , name = "right arm"
--   , description = "right arm for kind hand gestures"
--   , cost = 1025.00
--   }

-- head :: RobotPart
-- head = RobotPart
--   { partId = 3
--   , name = "robot head"
--   , description = "this head looks mad"
--   , cost = 5092.25
--   }

-- leftHand :: RobotPart
-- leftHand = RobotPart
--   { partId = 4
--   , name = "left hand non-dominate"
--   , description = "this head looks mad"
--   , cost = 7999.99
--   }

-- rightHand :: RobotPart
-- rightHand = RobotPart
--   { partId = 5
--   , name = "right hand dominate"
--   , description = "this head looks mad"
--   , cost = 5092.25
--   }

data RobotPart = RobotPart
  { partId :: Int
  ,  name :: String
  , description :: String
  , cost :: Double
  } deriving Show


main :: IO ()
main = do
  let file = "parts.csv"
  contents <- TIO.readFile file
  let p1 = T.lines contents
  let p2 = fmap (T.splitOn ",") p1
  print p2
