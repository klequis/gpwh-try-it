{-
    concatThree is a variation of minOfThree
-}
concatThree :: String -> String -> String -> String
concatThree s1 s2 s3 = concat [s1,s2,s3]

getStr :: IO String
getStr = getLine

catStrings :: IO String
catStrings = concatThree <$> getStr <*> getStr <*> getStr

sa :: IO String
sa = do
  return "aa"

sb :: IO String
sb = do
  return "bb"

sc :: IO String
sc = do
  return "cc"

catStr :: IO String
catStr = concatThree <$> sa <*> sb <*> sc

main1 :: IO ()
main1 = do
  x <- catStr
  putStrLn x

main :: IO ()
main = do
  putStrLn "Enter three strings"
  let a = "a"
  catStr <- catStrings
  putStrLn catStr


{- QUESTION
   - What does  `<-` really do?
   - The book (GPWH) says "Do-notation allows you to assign an IO String variable 
     by using <-, to act like it’s an ordinary String, and then to pass it to 
     functions that work with only regular Strings."
   - That is good "how to use" knowledge but I'm curious what it actuall does.
     Does `<-` take the value out of the `IO` context.
-}