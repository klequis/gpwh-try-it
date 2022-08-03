-- q11.1
-- fil :: (a -> Bool) -> [a] -> [a]

-- q11.2
-- head :: [a] -> [a]

-- q11.3

-- myFold :: (a -> b) -> a -> [a]

myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
  where newInit = f init x
