promptLine :: String -> IO String
promptLine prompt = do
    putStr prompt
    getLine

promptTwoLines :: String -> String -> IO String
promptTwoLines prompt1 prompt2 = do
    line1 <- promptLine prompt1                         -- line1 :: String  
    line2 <- promptLine prompt2                         -- line2 :: String
    return (line1 ++ " and " ++ line2)    -- ??

main :: IO ()
main = do
    line1 <- promptLine "Enter a line: "                -- line1 :: String
    line2 <- promptLine "And another: "                 -- line2 :: String
    putStrLn ("you said: " ++ line1 ++ " and " ++ line2)

-- plusOne :: Num a => p -> a -> a
plusOne :: Integer -> Integer
plusOne = (+1)