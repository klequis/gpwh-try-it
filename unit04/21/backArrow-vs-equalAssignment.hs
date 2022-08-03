import qualified Data.Map as Map
import Data.Maybe (fromJust)

costData :: Map.Map Int Double
costData = Map.fromList [(1,18.0),(2,16.0)]

fn1 :: Maybe String
fn1 = do
    c1 <- Map.lookup 1 costData    -- c1 is a Double
    let c2 = Map.lookup 1 costData -- c2 is a Maybe Double
    let s = c1 + fromJust c2
    return (show s)


-- main = do
--     c1 <- Map.lookup 1 costData
--     let c2 = Map.lookup 1 costData
--     return show (c1 + c2)

-- convert :: Double -> Maybe Double -> String
-- convert _ Nothing = "no value"
-- convert c1 (Just s) = show (c1 + s)