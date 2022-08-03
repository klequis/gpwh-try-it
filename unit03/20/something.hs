series2 :: [(Int,Double)]
series2 = [(11,201.6), (12,201.5), (13, 201.5)
        ,(14, 203.5), (15, 204.9), (16, 207.1)
        ,(18, 210.5), (20, 208.8)]

series3 :: [(Int,Double)]
series3 = [(10, 201.2),(11, 201.6),(12, 201.5)
        ,(13, 201.5),(14, 203.5),(17, 210.5)
        ,(24, 215.1),(25, 218.7)]

matchingTimes = [11,12,13,14]

-- a = [((a,b), (c,d)) | (a,b) <- series2, (c,d) <- series3 | ]

data Time a = Time (Integer, Double)
-- type Time = [(Integer,Double)]

-- instance (Show a) => Show (TS a) where
--    show (TS times values) = mconcat rows
--      where rows = (zipWith showTVPair times values)

instance Semigroup (Time a) where
    (<>) = 

instance Show (Time a) => Show (Time a) where
    show (Time v) = fst v ++ snd v


a :: Time -> Time
a = filter (\tup -> fst tup `elem` matchingTimes )