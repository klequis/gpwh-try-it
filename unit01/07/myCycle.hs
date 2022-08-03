-- myCycle xs = myCycle [1,2,3]
--   where mn = min xs
--         mx = max xs

finiteCycle (first:rest) = first:rest ++ [first]

myCycle (x:xs) = x:myCycle (xs++[x])

-- myCycle [1,2,3]
-- myCycle [2,3]++[1] -> [2,3,1]
-- 1:2
-- got it