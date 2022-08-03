reverseMaybe :: Maybe String -> Maybe String
reverseMaybe (Just str) = Just (reverse str)
reverseMaybe Nothing = Nothing