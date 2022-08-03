addIt a b = a + b

binaryPartialApplicationMe a b fn = fn a

binaryPartialApplication binaryFunc arg = (\x -> binaryFunc arg x)