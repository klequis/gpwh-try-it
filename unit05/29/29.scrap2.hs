-- x = [(+1)]
-- y = [1,2,3]
-- z = x <*> y


-- -- m = [(+1)] <*> [1,2,3]

{- --------------- -}

-- (<*>) :: [t -> a] -> [t] -> [a]
-- fs <*> xs = [f x | f <- fs, x <- xs]

-- (<*>) :: [t -> a] -> [t] -> [a]
(<*>) :: [] (a -> b) -> [] a -> [] b
(<*>) fs xs = [f x | f <- fs, x <- xs]


a = [(x,y) | x <- [1,2,3], y <- [7,8,9]]
-- [(1,7),(1,8),(1,9),(2,7),(2,8),(2,9),(3,7),(3,8),(3,9)]




-- (<*>) :: [] (a -> b) -> [] a -> [] b
-- (<*>) :: [(a -> b)] -> [a] -> [b]