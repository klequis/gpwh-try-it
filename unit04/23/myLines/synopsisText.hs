-- https://www.fpcomplete.com/haskell/tutorial/string-types/

{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import Data.Monoid ((<>))

main :: IO ()
main = do
    TIO.writeFile "content.txt" "This is some sample content"
    text <- TIO.readFile "content.txt"
    print text
    print $ T.takeWhile (/= ' ') text
    print $ T.take 5 text
    print $ "File contents: " <> text

    putStrLn $ "Largest character: " ++ show (T.foldl1' max text)
    -- Or just use T.maximum

    putStrLn $ "Spaces: " ++ show (T.length (T.filter (== ' ') text))