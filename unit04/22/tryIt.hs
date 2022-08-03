import System.Environment ( getArgs )
import Control.Monad ( replicateM )

main :: IO ()
main = do
    args <- getArgs
    print args