import Data.List

-- compareLastNamesPoor name1 name2 =  if lname1 > lname2
--                                 then GT
--                                 else if lname1 < lname2
--                                   then LT
--                                   else EQ
--   where lname1 = snd name1
--         lname2 = snd name2

compareLastNames name1 name2
  | lname1 == lname2 = if fname1 < fname2 then LT else GT
  | lname1 > lname2 = GT
  | lname1 < lname2 = LT
  | otherwise = EQ
  where
      lname1 = snd name1
      lname2 = snd name2
      fname1 = fst name1
      fname2 = fst name2


-- names = [("Emil","Cioran")
--   , ("Eugene","Thacker")
--   , ("Friedrich","Nietzsche")]


names = [
     ("Ian", "Curtis")
    ,("Peter", "Hook")
    ,("James", "Hook")
    ,("Stephen","Morris")
    ,("Bernard","Sumner")
  ]
