-- You can't chain together getLine and putStrLn with just Functor & Applicative
-- But it is trivial with Monad

echo :: IO ()
echo = getLine >>= putStrLn

main :: IO ()
main = echo