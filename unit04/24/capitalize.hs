import System.IO
import System.Environment ( getArgs )
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

-- > cp filename.txt newfile.txt
main :: IO ()
main = do
    args <- getArgs
    let file = head args
    content <- TIO.readFile file
    TIO.writeFile file (T.toUpper content)
    print content