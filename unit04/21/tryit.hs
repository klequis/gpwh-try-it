{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Eta reduce" #-}



idStr :: String -> String
idStr a = a

idInt :: Int -> Int
idInt a = a

idIOStr :: IO String -> IO String
idIOStr a = a

toInt :: String -> Int
toInt a = 1




main :: IO ()
main = do
    putStrLn "Enter an Int"
    a <- getLine
    -- let b =  idIOStr a -- Expected: IO String, Actual: String
    -- let b = idInt a -- Expected: Int, Actual: String
    -- let b = idStr a -- works
    let b = toInt a
    putStrLn b


{-
    getLine :: IO String
    putStrLn :: String -> IO ()

-}

{-
    digitToInt 'a' -> 10
    intToDigit 10  -> 'a'
-}


  