{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use newtype instead of data" #-}

data Box a = Box a deriving Show

instance Functor Box where
  fmap func (Box val) = Box (func val)


morePresents :: Box a -> Box [a]
morePresents (Box a) = Box [a]

myBox :: Box Int
myBox = Box 1

-- wrapped :: Box a -> Box (Box a)
-- wrapped box = Box box

-- use `fmap` to put a Box value in another box

wrapped :: Box (Box Int)
wrapped = fmap Box myBox

-- define a function that takes a value out of a box 
-- and use `fmap` on that function to get the original box
-- unwrap :: Box (Box a) -> Box a
-- unwrap (Box (Box a)) = Box a
unwrap :: Box a -> a
unwrap (Box a) = a
