import System.IO
import System.Environment ( getArgs )
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

-- > cp filename.txt newfile.txt
main :: IO ()
main = do
    args <- getArgs
    let cmd = args !! 0
    let source = args !! 1
    let dest = args !! 2
    content <- TIO.readFile source
    TIO.writeFile dest content
    print content