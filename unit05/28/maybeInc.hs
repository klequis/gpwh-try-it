maybeInc :: Maybe (Integer -> Integer)
maybeInc = (+) <$> Just 1
