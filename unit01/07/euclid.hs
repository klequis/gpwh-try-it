{-
  Two nums a & b
  #1.   if mod a b == 0 then done

  #2.  a becomes b
       b becomes remainder from #1
       if mod a b == 0 then done
       else repeat
-}

eulid :: (Integral a) => a -> a -> a
eulid a b = if m == 0 then b else eulid b m
  where m = mod a b