-- {-# LANGUAGE OverloadedStrings #-}

import qualified Data.Text as T
import Text.Read




main :: IO ()
main = do
  let a = readMaybe "123" :: Maybe Double
  print a


