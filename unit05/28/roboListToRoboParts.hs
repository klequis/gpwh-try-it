data RobotPart = RobotPart
  { partId :: Int
  , name :: String
  , description :: String
  , cost :: Double
  } deriving Show

list :: [[[Char]]]
list = [["1","left arm","non-dominate left arm","999.99"],["2","right arm","dominate right arm","1999.99"],["3","head","smart head IQ 190","20090.99"],["4","left hand","non-dominate left hand","6999.99"],["5","right hand","dominate right hand","8999.99"]]

-- Pattern match(es) are non-exhaustive

cvList1 (partId:name:description:cost:rest) = RobotPart {
    partId = read partId
    , name = name
    , description = description
    , cost = read cost
  }

cvList2 xs = RobotPart {
    partId = read (head xs)
    , name = xs !! 1
    , description = xs !! 2
    , cost = read (xs !! 3)
  }



-- doIt = map cvList list



