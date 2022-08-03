myTail :: [p] -> [p]
myTail [] = error "Empty list"
myTail (x:xs) = xs