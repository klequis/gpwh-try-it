-- Q9.1 Use filter and length to re-create 
--      the elem function.
-- `elem` Does the element occur in the structure
-- E.g., > 3 `elem` [1,2] -- false

myElem :: p -> [Char] -> Bool
myElem x xs = not (null r)
  where r = filter (/= ' ') xs
