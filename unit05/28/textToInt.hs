{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text.IO as TIO
import qualified Data.Text as T
import qualified Data.Char as TIO
import qualified Data.Text.Read as TR
import Data.Either ()


txtInt :: T.Text
txtInt = "2"

txtDbl :: T.Text
txtDbl = "2.22"

txtBad :: T.Text
txtBad = "hello"

r2 :: Either String (Integer, T.Text)
r2 = TR.decimal txtInt

r3 :: Either String (Double, T.Text)
r3 = TR.double txtDbl

destructureIt :: Either a1 (a2, b) -> a2
destructureIt (Right (a,b)) = a


