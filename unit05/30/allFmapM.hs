{-
    write a universal version of <$>
    called allFmapM that defines <$> for all
    members of the Monad type class.
-}

-- Me, not sure how it differs but answer is correct
allFmapM :: Monad m => (a -> b) -> m a -> m b
allFmapM fn a = fn <$> a >>= return

-- Books answer
allFmapM1 :: Monad m => (a -> b) -> m a -> m b
allFmapM1 func val = val >>= (\x -> return (func x))

-- not the answer but interesting can do this.
returnIt :: Monad m => m b -> m b
returnIt val = val >>= (\x -> return x)
-- If you send it `> Just 3` it returns `Just 3`
-- My guess on how it works
   -- `val >>=` sends 3 to the lambda.
   -- return is pur for Monad so 3 gets lifted into a Monad
   -- It gets lifted into a `Maybe` bec the compiler sees
   --   it was sent a Maybe and `m` must be the same type throughout.
-- Now, wonder if that is correct.

