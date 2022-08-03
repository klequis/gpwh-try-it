str = "I don't want, any commas,at all,"

removeCommas xs = [x | x  <- xs, x /= ',']