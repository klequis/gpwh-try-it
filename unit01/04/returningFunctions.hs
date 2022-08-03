{-
    This function which ends on p. 41 was given without
    any types. I modified to have types.
-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use newtype instead of data" #-}

data Name a = Name ([Char], [Char])
data Office a = Office ([Char], [Char])
data Address a = Address [Char]

instance Show (Address a) where
    show (Address address) = address

sfOffice :: Name a -> Address a
sfOffice (Name name) = if lastName < "L"
                then Address (nameText
                    ++ " - PO Box 1234 - San Francisco, CA, 94111")
                else Address (nameText
                    ++ " - PO Box 1010 - San Francisco, CA, 94109")
    where lastName = snd name
          nameText = fst name ++ " " ++ lastName

nyOffice :: Name a -> Address a
nyOffice (Name name) = Address (nameText ++ ": PO Box 789 - New York, NY, 10013")
    where nameText = fst name ++ " " ++ snd name

renoOffice :: Name a -> Address a
renoOffice (Name name) = Address (nameText ++ " - PO Box 456 - Reno, NV 89523")
    where nameText = snd name

otherOffice :: Name a -> Address a
otherOffice (Name name) = Address nameText
    where nameText = fst name ++ " " ++ snd name

getLocationFunction :: [Char] -> Name a -> Address a
getLocationFunction location = case location of
    "ny" -> nyOffice
    "sf" -> sfOffice
    "reno" -> renoOffice
    _ -> otherOffice

addressLetter :: ([Char], [Char]) -> [Char] -> Address a
addressLetter name location = locationFunction (Name name)
    where locationFunction = getLocationFunction location
