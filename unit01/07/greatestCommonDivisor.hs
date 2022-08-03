-- 20 & 16


isDivisor :: Integral a => a -> a -> Bool
isDivisor n d =  n `rem` d == 0

gtcd a b = if remainder == 0
          then b
          else gtcd b remainder
  where remainder = a `mod` b

sayAmount :: (Eq a, Num a) => a -> [Char]
sayAmount n = case n of
  1 -> "one"
  2 -> "two"
  n -> "a bunch"
