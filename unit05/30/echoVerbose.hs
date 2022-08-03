{-
    An example of using `>>`.
    There is not need for a return value from `putStrLn` even if 
      did/could return something.
    `>>` throws away the result of the preceeding Monad.
-}
echoVerbose :: IO ()
echoVerbose = putStrLn "Enter a String an we'll echo it!" >> getLine >>= putStrLn

main :: IO ()
main = echoVerbose