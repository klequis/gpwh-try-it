{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

{-
    This didn't work with the Sanskrit but did with English.
-}

dharma :: T.Text
dharma = "धमॅ"

bgText :: T.Text
bgText = "श्रेयान्स्वधर्मो विगुणः परधर्मात्स्वनुष्ठितात्।स्वधर्मे निधनं श्रेयः परधर्मो"

dog :: T.Text
dog = "dog"

dogText :: T.Text
dogText = "I have a really great dog that is better then any other dog."

highlight :: T.Text -> T.Text -> T.Text
highlight query fullText = T.intercalate highlighted pieces
    where pieces = T.splitOn query fullText
          highlighted = mconcat ["{",query,"}"]

main :: IO ()
main = do
  -- TIO.putStrLn (highlight dharma bgText)
  TIO.putStrLn (highlight dog dogText)
