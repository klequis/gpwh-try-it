{-
    - If m = 0, return n + 1.
    - If n = 0, then A(m – 1, 1).
    - If both m != 0 and n != 0, then A(m –1, A(m, n – 1)).

-}

-- Couldn't match type ‘a’ with ‘(a, t)’
--    Expected: (a, t) -> t
--    Actual: a -> t -> t


ack 0 n = n + 1
ack m 0 = ack (m - 1) 1
ack m n = ack (m-1) (ack m (n-1))

{-
   ack 3 3 = ack 2 (ack 3 2)
                   ack 3 2   
            
-}
