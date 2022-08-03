import qualified Data.Function as F
import qualified Data.List as L

-------------------------------------------------------------------------------
-- Input

file2 :: [(Int,Double)]
file2 = [(11,201.6), (12,201.5), (13, 201.5)
        ,(14, 203.5), (15, 204.9), (16, 207.1)
        ,(18, 210.5), (20, 208.8)]

file3 :: [(Int,Double)]
file3 = [(10, 201.2),(11, 201.6),(12, 199.5)
        ,(13, 197.5),(14, 197.5),(17, 210.5)
        ,(24, 215.1),(25, 218.7)]

-------------------------------------------------------------------------------
-- Types

data Time a = Time { tClock :: Int,
                     tVal :: a }
    deriving (Eq, Ord)

ptimes :: [(Int, Double)] -> [Time Double]
ptimes f = map (uncurry Time) f

instance Show a => Show (Time a) where
  show t = "(" ++ show (tClock t) ++ ", " ++ show (tVal t) ++ ")"

instance Functor Time where
    fmap f (Time c v) = Time c (f v)

-------------------------------------------------------------------------------
-- Program

main :: IO ()
main = do
        let ds = diffs (ptimes file2) (ptimes file3)
            ss = map pdiff ds
        putStrLn (unlines ss)

-- ordered list of `Time` having the sale tClock
diffs :: [Time Double] -> [Time Double] -> [Time (Double, Double)]
diffs ts1 ts2 =
        let ts = L.sort (ts1 ++ ts2)
            gs = L.groupBy (F.on (==) tClock) ts
            fs = filter ((==2) . length) gs
        in map df fs
    where
          df :: [Time Double] -> Time (Double, Double)
          df [t1, t2] = Time (tClock t1) (tVal t2, tVal t1)

pdiff :: Time (Double, Double) -> String
pdiff td = show (fmap fst td) ++ ", " ++ show (fmap snd td) ++
             " | " ++ show (tupdiff $ tVal td)
    where
          tupdiff (i1, i2) = i1 - i2
