import System.Environment ( getArgs )
import Control.Monad ( replicateM )


-- myReplicateM :: Int -> IO String -> [String]
myReplicateM num fn = mapM fn [1..num]

-- The signature of `remplicateM` should have tipped me off
-- replicateM :: Applicative m => Int -> m a -> m [a]
-- I don't know what an "Applicative" is yet but the `m` indicates Monad.

-- here is mine fixed
--myReplicateM2 :: Monad m => Int -> m a -> m [a]
myReplicateM2 :: Monad m => Int -> m fn -> m [fn]
myReplicateM2 num fn = mapM fn [1..num]

-- book
booksMyReplicateM :: Monad m => Int -> m a -> m [a]
booksMyReplicateM n func = mapM (\_ -> func) [1 .. n]


-- Listing 22.6
main :: IO ()
main = do
  args <- getArgs
  let linesToRead = if length args > 0
                    then read (head args)
                    else 0 :: Int
  -- numbers <- replicateM linesToRead getLine
  numbers <- booksMyReplicateM linesToRead getLine
  let ints = map read numbers :: [Int]
  print (sum ints)