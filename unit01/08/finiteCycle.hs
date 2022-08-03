finiteCycle [] = []
finiteCycle (first:rest) = rest ++ [first]

myCycle (first:rest) = first:myCycle (rest++[first])
