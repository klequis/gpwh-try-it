-- cup flOz = \_ -> flOz

-- add a message which can be thought of as a 'method'

-- 10.1
cup flOz = \message -> message flOz

-- 10.2
coffeeCup = cup 12

-- 10.3
getOz aCup = aCup (\flOz -> flOz)

-- 10.4
drink aCup ozDrank = if ozDiff > 0
                     then cup ozDiff
                     else cup 0
  where flOz = getOz aCup
        ozDiff = flOz - ozDrank

isEmpty aCup = getOz aCup == 0

-- 10.7
afterManySips = foldl drink coffeeCup [1,1,1,1,1]
