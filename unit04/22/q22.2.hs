
import qualified Data.Map as Map
import Text.Read (readMaybe)

answers :: [(Integer, [Char])]
answers = [(1,"Quote 1"), (2,"Quote 2"), (3,"Quote 3"), (4,"Quote 4"),(5,"Quote 5")]

quoteMap :: Map.Map Integer [Char]
quoteMap = Map.fromList answers

getQuote :: Maybe Integer -> Maybe [Char]
getQuote (Just num) = Map.lookup num quoteMap
getQuote Nothing = Nothing

main = do
    print "Enter a number from 1 to 5"
    num <- getLine
    let numNum = readMaybe num :: Maybe Integer
    let quote = getQuote numNum
    print quote
    print "Continue (y/n)?"
    cont <- getLine
    if cont == "y" then main else print "bye"