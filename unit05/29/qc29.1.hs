
-- a :: Maybe String
-- a = "Hello"

-- not sure what I did here
a :: Maybe [Char]
a = (++) <$> Just "hello" <*> Just "World"


-- Books solution
allFmap :: Applicative f => (a -> b) -> f a -> f b
allFmap func app = (pure func) <*> app