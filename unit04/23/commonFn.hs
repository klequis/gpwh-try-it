{-# LANGUAGE OverloadedStrings #-}

import qualified Data.Text as T

sampleInput :: T.Text
sampleInput = "this\nis\ninput"

someText :: T.Text
someText = "Some\ntext for\t you"

breakText :: T.Text
breakText = "simple"

exampleText :: T.Text
exampleText = "This is simple to do"


-- T.lines

main :: IO ()
main = do
  -- print (T.lines "this\nis\ninput")                -- ["this","is","input"] | brakes on `\n`
  -- print (T.words "Some\ntext for\t you")           -- ["Some","text","for","you"] | brakes on any whitespace character
  -- print (T.splitOn "simple" "This is simple to do")-- ["This is "," to do"] | breakes on specified text
  -- print (T.unlines ["this","is","input"])             -- "this\nis\ninput\n" | reforms lines
  -- print (T.unwords ["Some","text","for","you"])       -- "Some text for you" | you see it
  -- print (T.intercalate "simple" ["This is "," to do"]) -- "This is simple to do" |  joins with specified character
