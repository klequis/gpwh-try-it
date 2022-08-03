import RotN
-- countTF :: (Num a, Num b) => [Bool] -> (a, b) -> (a, b)
-- countTF [] (a,b) = (a,b)
-- countTF (x:xs) (a,b) = countTF xs yy
--   where yy = if x
--              then (a+1,b)
--              else (a,b+1)


data OneTimePad = OTP String
data Rot = Rot
type Bits = [Bool]

class Cipher a where
  encode :: a -> String -> String
  decode :: a -> String -> String

instance Cipher Rot where
   encode Rot text = rotEncoder text
   decode Rot text = rotDecoder text

instance Cipher OneTimePad where
  encode (OTP pad) text = applyOTP pad text
  decode (OTP pad) text = applyOTP pad text

myOTP :: OneTimePad
myOTP = OTP (cycle [minBound .. maxBound])

xorBool :: Bool -> Bool -> Bool
xorBool value1 value2 = (value1 || value2) && (not (value1 && value2))

xorPair :: (Bool,Bool) -> Bool
xorPair (v1,v2) = xorBool v1 v2

xor :: [Bool] -> [Bool] -> [Bool]
xor list1 list2 = map xorPair (zip list1 list2)

intToBits' :: Int -> Bits
intToBits' 0 = [False]
intToBits' 1 = [True]
intToBits' n = if remainder == 0 -- if multiple of 2
               then False : intToBits' nextVal
               else True : intToBits' nextVal
  where remainder = n `mod` 2
        nextVal = n `div` 2

maxBits :: Int
maxBits = length (intToBits' maxBound)

intToBits :: Int -> Bits
intToBits n = leadingFalses ++ reversedBits
  where reversedBits  = reverse (intToBits' n)
        missingBits   = maxBits - (length reversedBits)
        leadingFalses = take missingBits (cycle [False])

charToBits :: Char -> Bits
charToBits char = intToBits (fromEnum char)

bitsToInt :: Bits -> Int
bitsToInt bits = sum (map (\x -> 2^(snd x)) trueLocations)
  where size = length bits
        indices = [size-1,size-2 .. 0]
        trueLocations = filter (\x -> fst x == True)
                        (zip bits indices)

bitsToChar :: Bits -> Char
bitsToChar bits = toEnum (bitsToInt bits)

myPad :: String
myPad = "s"

myPlainText :: String
myPlainText = "Haskell"

applyOTP' :: String -> String -> [Bits]
applyOTP' pad plaintext = map (\pair ->
                                (fst pair) `xor` (snd pair))
                          (zip padBits plaintextBits)
  where padBits = map charToBits pad
        plaintextBits = map charToBits plaintext

applyOTP :: String -> String -> String
applyOTP pad plaintext = map bitsToChar bitList
  where bitList = applyOTP' pad plaintext -- bitList

encoderDecoder :: String -> String
encoderDecoder = applyOTP myPad

{-
    applyOTP' :: String -> String -> [Bits]
    applyOTP' pad plaintext = zipWith xor padBits plaintextBits
      where padBits = map charToBits pad
            plaintextBits = map charToBits plaintext
-}


mapCharToBits_book = [[False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, False, False, True, False], [False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, True, True, True], [False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, True, True, True], [False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, True, True]]

mapCharToBits_shhhhhh = [[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,False,False,True,True],[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,True,False,True,False,False,False],[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,True,False,True,False,False,False],[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,True,False,True,False,False,False],[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,True,False,True,False,False,False],[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,True,False,True,False,False,False],[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,True,False,True,False,False,False]]