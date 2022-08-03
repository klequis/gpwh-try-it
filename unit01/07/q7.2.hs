gtcdOld a b = if remainder == 0
          then b
          else gtcd b remainder
  where remainder = a `mod` b


gtcd :: Integral t => t -> t -> t
gtcd a 0 = a
gtcd a b = gtcd b (a `mod` b)



