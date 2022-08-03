fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- I didn't get this one. More of a fib understanding
-- than a Haskell problem.
-- Here is the book's solution

fastFib _ _ 0 = 0
fastFib _ _ 1 = 1
fastFib _ _ 2 = 1
fastFib x y 3 = x + y
fastFib x y c = fastFib (x + y) x (c - 1)

