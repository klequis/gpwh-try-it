{-
    Quick check 29.2 Make the String "Hello World" into an IO String.
-}

-- my answer
toIoStr :: String -> IO String
toIoStr str = pure str :: IO String

-- books answer
hello :: IO String
hello = pure "Hello World"