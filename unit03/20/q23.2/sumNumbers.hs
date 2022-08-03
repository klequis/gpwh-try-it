import qualified Data.Text.Lazy as T
import qualified Data.Text.Lazy.IO as TIO

{-
    This is the book's code. He upcacked the numbers 
    in order to use `read`. I wonder if there isn't a
    better way. Maybe `readMaybe`?
-}

toInts :: T.Text -> [Int]
toInts = map (read . T.unpack) . T.lines

main :: IO ()
main = do
    userInput <- TIO.getContents
    let numbers = toInts userInput
    TIO.putStrLn ((T.pack . show . sum) numbers)