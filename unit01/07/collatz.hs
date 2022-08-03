{-
    n == 1 -> done
    n 'mod' 2 == 0 -> coll n/2
    n 'mod' 2 \== 0 -> col n*3+1
-}

coll :: (Integral t, Fractional a) => t -> a
coll 1 = 1
coll n = if even n 
         then 1 + coll (n `div` 2)
         else 1 + coll (n*3+1)

collatz 1 = 1
collatz n = if even n
            then 1 + collatz (n `div` 2)
            else 1 + collatz (n*3 + 1)

