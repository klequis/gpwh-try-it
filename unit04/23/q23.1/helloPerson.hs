{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

helloPerson :: T.Text -> T.Text
helloPerson name = "Hello" <> " " <> name <> "!"

main :: IO ()
main = do
    putStrLn "Hello! What's your name?"
    name <- getLine
    let nameT = T.pack name
    let statement = helloPerson nameT
    TIO.putStrLn statement
