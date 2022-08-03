{-
    28.3 Using <*> to create data in a context
    - Create data in context
    - Use the same type (i.e., User) in different contexts.
-}

data User = User
  { name :: String
  , gamerId :: Int
  , score :: Int
  } deriving Show

serverUsername :: Maybe String
serverUsername = Just "Sue"
serverGamerId :: Maybe Int
serverGamerId = Just 1337
serverScore :: Maybe Int
serverScore = Just 9001

-- Create user from above data
sue :: Maybe User
sue =  User <$> serverUsername <*> serverGamerId <*> serverScore

-- Create user from user supplied data
readInt :: IO Int
readInt = read <$> getLine

main :: IO ()
main = do
  putStrLn "Enter a username, gamerId and score"
  user <- User <$> getLine <*> readInt <*> readInt
  print user