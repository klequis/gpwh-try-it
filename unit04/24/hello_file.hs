import System.IO

-- hasLine hfile = 
--     where hasLine = 


main :: IO ()
main = do
    helloFile <- openFile "hello.txt" ReadMode
    hasLine <- hIsEOF helloFile
    -- 1st
    firstLine <- if not hasLine
    then hGetLine helloFile
    else return "empty"
    putStrLn firstLine
    -- 2nd
    secondLine <- if not hasLine
    then hGetLine helloFile
    else return "empty"
    putStrLn secondLine
    -- 3rd - DOESN'T WORK
    -- thirdLine <- if not hasLine
    -- then hGetLine helloFile
    -- else return "empty"
    -- putStrLn thirdLine
    putStrLn "done!"




{-
    Read and write lines
-}
-- main :: IO ()
-- main = do
--     helloFile <- openFile "hello.txt" ReadMode
--     firstLine <- hGetLine helloFile
--     putStrLn firstLine
--     secondLine <- hGetLine helloFile
--     goodbyeFile <- openFile "goodbye.txt" WriteMode
--     hPutStrLn goodbyeFile secondLine
--     hClose helloFile
--     hClose goodbyeFile
--     putStrLn "done"