{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use newtype instead of data" #-}
import Data.List

names = [
      "Ian|Curtis"
    , "Bernard|Sumner"
    , "Peter|Hook"
    , "Stephen|Morris"
  ]

-- type FirstName = [Char]
-- type LastName = [Char]
data Name a = Name ([Char], [Char]) deriving (Eq, Ord)

readNames names = pair
  where a = map 

-- data Names a = Names [Name a]
instance (Show a) => Show (Name a) where
  show (Name a) = concat [fst a, " ", snd a]

x = Name ("Tina", "Thomas")

-- names :: [([Char], [Char])]
-- names :: [Name a]
names :: [Name a]
names = [  Name ("Ian", "Curtis")
         , Name ("Bernard","Sumner")
         , Name ("Peter", "Hook")
         , Name ("Stephen","Morris")
        ]

-- showNames names = namesList
--   where namesList = map (\x -> concat[(fst x), " ", (snd x), ",\n"])

-- instance (Show a) => Name where
--   show name = concat [fst name, snd name]

-- sortByFirst :: Ord a => [a] -> [a]
-- sortByFirst names = sort names

-- compareLastNames name1 name2 = if lastName1 > lastName2
--                                then GT
--                                else if lastName1 < lastName2
--                                     then LT
--                                     else EQ
