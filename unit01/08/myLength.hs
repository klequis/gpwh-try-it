myLength [] = 0
myLength xs = 1 + myLength (tail xs)

myLength2 [] = 0
myLength2 (x:xs) = 1 + myLength xs

