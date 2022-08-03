minOfThree :: (Ord a) => a -> a -> a -> a
minOfThree val1 val2 val3 = min val1 (min val2 val3)

readInt :: IO Int
readInt = read <$> getLine
-- How is the different from `x <- read getLine`?
-- Because `getLine` returns an `IO String` and `<$>` applies `read` to the `String` inside `IO`.

-- readInt2 :: IO Int
-- readInt2 = (\(Just x) -> read x) <$> getLine

whatIsIt (Just x) = "Just"
whatIsIt Nothing = "Nothing"

minOfInts :: IO Int
minOfInts = minOfThree <$> readInt <*> readInt <*> readInt

main :: IO ()
main = do
  putStrLn "Enter three numbers"
  minInt <- minOfInts
  putStrLn (show minInt ++ " is the smallest")
-- main :: IO ()
-- main = do
--   putStrLn "Enter three numbers"
--   minInt <- minOfInts
--   putStrLn (show minInt ++ " is the smallest")
