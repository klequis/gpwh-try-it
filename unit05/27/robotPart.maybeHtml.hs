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

{-
    27.3.2 Converting a Maybe RobotPart to Maybe Html
-}

-- ---
-- We are not going to write `insertSnippet` but let's say we had
-- a function to insert a html snippet into a web page, here is its signature:
-- insertSnippet :: Maybe Html -> IO ()
-- `insertSnippet` requires you pass you pass it a `Maybe Html`
-- below is one way of doing that.

-- ----
-- Hard-coded part
-- Remember: `Map.lookup` returns a `Maybe`
-- Remember: `Maybe` is a `Functor`
partVal :: Maybe RobotPart
partVal = Map.lookup 1 partsDB
-- next, pass `partVal` to `partHtml`

-- ---
-- Remember: `<$>` is `fmap`
-- `partVal` is a `Functor` because it is a `Maybe`
-- `renderHtml` is a `Functor` because it returns a `String`
--   which is `[Char]` and `Char` has an instance for `Functor`
-- in words: `partHtml` returns a `Maybe Html` (which is the same as `Maybe String`)
partHtml :: Maybe Html
partHtml = renderHtml <$> partVal


