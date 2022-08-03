readInt :: IO Int
readInt = read <$> getLine

printDouble :: Int -> IO ()
printDouble n = print (n*2)

-- rP :: IO Int -> IO ()
-- rP i = readInt i >>= printDouble

main :: IO ()
main = do
  readInt >>= printDouble