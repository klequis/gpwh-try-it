helloPerson :: String -> String
helloPerson name = "Hello" ++ " " ++ name ++ "!"

main :: IO ()
main = do
  putStrLn "Hello! What's your name?"
  name <- getLine
  let statement = helloPerson name
  putStrLn statement

charles :: Maybe String
charles = Just "Charles"

maybeHelloPerson :: Maybe String
maybeHelloPerson = do
  name <- charles
  let statement = helloPerson name
  return statement