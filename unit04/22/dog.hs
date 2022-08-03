data Dog = Dog String Int deriving (Show)

create :: String -> Maybe Dog
create name =
  if null name
    then Nothing
    else Just $ Dog name 0

train :: Int -> Dog -> Maybe Dog
train hours (Dog name level) =
  let newLevel
        | hours > 6 = Nothing
        | hours == 0 = Just level
        | hours < 3 = Just (level + 2)
        | otherwise = Just $ level + hours
   in Dog name <$> newLevel

rename :: String -> Dog -> Dog
rename newName (Dog _ level) =
  Dog newName level

isToClever :: Dog -> Bool
isToClever (Dog _ level) =
  level > 100