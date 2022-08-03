myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
  where newInit = f init x

myFoldr f init [] = init
myFoldr f init (x:xs) = f x rightResult
  where rightResult = myFoldr f init xs

a = myFoldr (-) 0 [1,2,3,4]


rcons x y = y:x
myReverse xs = foldl rcons [] xs

addAnA [] = []
addAnA (x:xs) = ("a " ++ x):addAnA xs

squareAll [] = []
squareAll (x:xs) = x^2:squareAll xs

myMap :: (t -> a) -> [t] -> [a]
myMap f [] = []
myMap f (x:xs) = (f x):myMap f xs

myFilter test [] = []
myFilter test (x:xs) = if test x
                       then x:myFilter test xs
                       else myFilter test xs

-- myProduct x [] = x
-- myProduct (x:xs) = foldl (*) x xs

myProduct xs = foldl (*) 1 xs


sumOfSquares xs = foldl (+) 0 (map (^2) xs)


b = (((((((((0-1)-2)-3)-4)-5)-6)-7)-8)-9)-10
c = (((((((((-1)-2)-3)-4)-5)-6)-7)-8)-9)-10
d = ((((((((-3)-3)-4)-5)-6)-7)-8)-9)-10
e = (((((((-6)-4)-5)-6)-7)-8)-9)-10
f = ((((((-10)-5)-6)-7)-8)-9)-10
g = (((((-15)-6)-7)-8)-9)-10
h = ((((-21)-7)-8)-9)-10
i = (((-28)-8)-9)-10
j = ((-36)-9)-10
k = (-45)-10
l = -55