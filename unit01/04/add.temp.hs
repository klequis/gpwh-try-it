data Lame a = Name ([Char], [Char]) deriving (Show, Eq, Ord)

-- names :: [Name a]
-- names = [ Name ("Ian", "Curtis")
--         , Name ("Bernard","Sumner")
--         , Name ("Peter", "Hook")
--         , Name ("Stephen","Morris")
--         ]

toName theName = Name theName

names :: [([Char], [Char])]
names = [ ("Ian", "Curtis")
        , ("Bernard","Sumner")
        , ("Peter", "Hook")
        , ("Stephen","Morris")
        ]


createNames :: [Lame a]
createNames = map toName names

x = 5


f :: Int -> Int
f x = 1 + x