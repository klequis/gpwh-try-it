{-# LANGUAGE OverloadedStrings #-}

import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC

bcInt :: BC.ByteString
bcInt = "6"

-- -- me
-- bcToInt :: BC.ByteString -> Int
-- bcToInt str = read (BC.unpack str)

-- book
bcToInt :: BC.ByteString -> Int
bcToInt = read . BC.unpack
