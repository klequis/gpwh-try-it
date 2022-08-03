data Box a = Box a deriving Show

instance Functor Box where
  fmap func (Box val) = Box (func val)

myBox :: Box Int
myBox = Box 1

wrapIt :: a -> Box a
wrapIt = Box

unwrapIt :: Box a -> a
unwrapIt (Box a) = a