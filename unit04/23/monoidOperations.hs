{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import Data.Semigroup

-- `mconcat` is a method of `Monoid`
combinedTextMonoid :: T.Text
combinedTextMonoid = mconcat ["some"," ","text"]

-- `<>` is a method of `Semigroup`
combinedTextSemigroup :: T.Text
combinedTextSemigroup = "some" <> " " <> "text"
