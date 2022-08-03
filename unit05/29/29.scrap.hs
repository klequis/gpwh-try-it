

-- instance Applicative Maybe where
--     pure = Just

--     Just f  <*> m       = fmap f m
--     Nothing <*> _m      = Nothing

--     liftA2 f (Just x) (Just y) = Just (f x y)
--     liftA2 _ _ _ = Nothing

--     Just _m1 *> m2      = m2
--     Nothing  *> _m2     = Nothing

a :: Maybe Integer
a = (+) <$> Just 1 <*> Just 2

b0 :: Maybe (Integer -> Integer)
b0 = (+) <$> Just 1
-- I know b0 is `Maybe (Integer -> Integer)`
-- And that `(+1)` is in the context of a `Maybe`
-- So can I say I have a `Maybe (+1)`?
-- But it is really a `Just` so `Just (+1)` seems better

b1 :: Maybe Integer
b1 = b0 <*> Just 2

c :: Maybe (Integer -> Integer)
c = fmap (+) (Just 1)

d :: Maybe (Integer -> Integer)
d = (+) `fmap` Just 1

