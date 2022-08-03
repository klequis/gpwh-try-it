data Time = Time (Int,Double)
data Times = Times [Time]

file1 :: [(Int,Double)]
file1 = [ (1,200.1), (2,199.5), (3,199.4)
        , (4,198.9), (5,199.0), (6,200.2)
        , (9,200.3),(10,201.2), (12, 202.9)]

-- series1 :: [(Int,Double)] -> Times
-- series1 = map Time file1 -- works as if Time where (\x -> Time x)


file2 :: Times
file2 = [ (1,200.1), (2,199.5), (3,199.4)
        , (4,198.9), (5,199.0), (6,200.2)
        , (9,200.3),(10,201.2), (12, 202.9)]


{-
    In `file2` the first element of each tuple is a "time" and the
    the second a "value"

    I want to create 
-}