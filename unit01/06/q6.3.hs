inFirstHalf :: Eq a => a -> [a] -> Bool
inFirstHalf v xs = v `elem` half
  where divBy = length xs `div` 2
        half = take divBy xs



