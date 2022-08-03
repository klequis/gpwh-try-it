{- 
    Write a command-line interface for partsDB that lets the user look up the cost of
    an item, given an ID. Use the Maybe type to handle the case of the user entering missing
    input.
-}


import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import System.Environment ( getArgs )


main :: IO ()
main = do
    args <- getArgs
    let source = head args
    let dest = last args
    input <- TIO.readFile source
    -- writeFile :: FilePath -> String -> IO ()
    TIO.writeFile dest input
    print args
    print "** done **"