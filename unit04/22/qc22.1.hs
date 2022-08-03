import System.Environment ( getArgs )

main :: IO ()
main = do
  print "Enter a"
  a <- getLine
  putStrLn "Enter b"
  b <- getLine
  putStrLn "Enter c" 
  c <- getLine
  let lst = [a,b,c]
  putStrLn "You entered"
  mapM_ putStrLn lst -- mapM_ :: (Foldable t, Monad m) => (a -> m b) -> t a -> m ()


-- Book's solution
exampleMain :: IO ()
exampleMain = do
  vals <- mapM (\_ -> getLine) [1..3]
  mapM_ putStrLn vals
