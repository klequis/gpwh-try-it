import qualified Data.Map as Map

-- Data.Map is called dictionary in many other languages

data Organ = Heart | Brain | Kidney | Spleen deriving (Show, Eq)

organs :: [Organ]
organs = [Heart,Heart,Brain,Spleen,Spleen,Kidney]

ids :: [Int]
ids = [2,7,13,14,21,24]

{-
    
-}
