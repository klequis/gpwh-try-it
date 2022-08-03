import GHC.Real (Fractional)
{-
    In mathematics, the harmonic series is the sum 
    of 1/1 + 1/2 + 1/3 + 1/4 .... 
    Write a function harmonic that takes an argument n and 
    calculates the sum of the series to n. Make sure to use 
    lazy evaluation.

-}



harmonic :: (Integral a, Fractional a) => a -> a
harmonic n = sumIt n
  where frac x = 1.0 `div` x
        sumIt n = sum (map frac [1.0..n])

harmonic1 :: (Enum a, Fractional a) => Int -> a
harmonic1 n = sum (take n seriesValues)
  where seriesPairs = zip (repeat 1.0) [1.0,2.0 .. ]
        seriesValues = map
                       (\pair -> uncurry (/) pair)
                       seriesPairs

{-
  > zip (repeat 1.0) [1.0,2.0 .. 10.0]
  [(1.0,1.0),(1.0,2.0),(1.0,3.0),(1.0,4.0),(1.0,5.0),(1.0,6.0),(1.0,7.0),(1.0,8.0),(1.0,9.0),(1.0,10.0)]
-}

{-
  > uncurry (+) (1,2)
  3
-}