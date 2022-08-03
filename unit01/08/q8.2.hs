fastFib :: (Eq t1, Num t1, Num t2) => t2 -> t2 -> t1 -> t2
fastFib _ _ 0 = 0
fastFib _ _ 1 = 1
fastFib _ _ 2 = 1
fastFib x y 3 = x + y
fastFib x y c = fastFib (x + y) x (c - 1)


fib :: Integer -> Integer
fib n = fastFib 1 1 n