-- import Data.List.Split

-- myLines = splitOn "\n"

toInts :: String -> [Int]
toInts = map read . lines

-- Listing 22.11
main :: IO ()
main = do
    userInput <- getContents
    let numbers = toInts userInput
    print (sum numbers)


-- Listing 22.7
-- How getContents works
-- Works differently than book if not compiled
-- main :: IO ()
-- main = do
--     userInput <- getContents
--     mapM_ print userInput
