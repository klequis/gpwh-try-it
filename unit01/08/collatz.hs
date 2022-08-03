

col :: (Num a2, Integral a1) => a1 -> a2
col 1 = 1
col n = if even n
        then 1 + col (n `div` 2)
        else 1 + col (n*3 + 1)
  

collatz :: (Num a2, Integral a1) => a1 -> a2
collatz 1 = 1
collatz n = if even n
            then 1 + collatz (n `div` 2)
            else 1 + collatz (n*3 + 1)
