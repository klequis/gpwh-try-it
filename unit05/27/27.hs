incMaybe :: Maybe Int -> Maybe Int
incMaybe (Just n) = Just (n + 1)
incMaybe Nothing = Nothing

-- Already in GHC.Base
-- instance Functor Maybe where
--     fmap func (Just n) = Just (func n)
--     fmap func Nothing = Nothing

successfulRequest :: Maybe Int
successfulRequest = Just 6

failedRequest :: Maybe Int
failedRequest = Nothing

successStr :: Maybe String
successStr = show <$> successfulRequest

failStr :: Maybe String
failStr = show <$> failedRequest


myInt :: Maybe Int
myInt = Just 5

maybeIntToStr :: Maybe Int -> Maybe String
maybeIntToStr (Just a) = Just (show a)
maybeIntToStr Nothing = Nothing
