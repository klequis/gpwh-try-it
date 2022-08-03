import System.Environment ( getArgs )
import Control.Monad ( replicateM )

-- Listing 22.6
main :: IO ()
main = do
  args <- getArgs
  let linesToRead = if length args > 0
                    then read (head args)
                    else 0 :: Int
  numbers <- replicateM linesToRead getLine
  let ints = map read numbers :: [Int]
  print (sum ints)


-- Listing 22.6
-- main :: IO ()
-- main = do
--   args <- getArgs
--   let linesToRead = if length args > 0
--                     then read (head args)
--                     else 0 :: Int
--   numbers <- replicateM linesToRead getLine
--   let ints = map read numbers :: [Int] -- convert String to Int so can be summed
--   print (sum ints)



-- Listing 22.3 (2 of 2)
-- main :: IO ()
-- main = do
--   args <- getArgs     -- getArgs :: IO [String]
--   mapM_ putStrLn args -- mapM_ :: (Foldable t, Monad m) => (a -> m b) -> t a -> m ()
