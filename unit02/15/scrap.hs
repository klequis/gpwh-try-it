type Bits = [Bool]

charToBits' :: Int -> Bits
charToBits' 0 = [False]
charToBits' 1 = [True]
charToBits' n = if remainder == 0 -- if multiple of 2
               then False : charToBits' nextVal
               else True : charToBits' nextVal
  where remainder = n `mod` 2
        nextVal = n `div` 2

maxBits :: Int
maxBits c = length (charToBits' maxBound)