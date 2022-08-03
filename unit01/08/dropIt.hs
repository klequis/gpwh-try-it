dropIt _ [] = error "empty list"
dropIt n xs = (reverse . take n) reversed
  where reversed = reverse xs
