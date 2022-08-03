{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use newtype instead of data" #-}

data Box a = Box a deriving Show

{-
    - On my second try I did the below.
    - I clearly didn't take the type signature of `fmap` into account
    - And I mixed-up the implementation of `morePresents` with `fmap`
-}

-- instance Functor => Box a where
--     fmap (Box a) = Box [a]

{-
    - So here is the correct solution which I did last time

    Note
    - On the first line only `Box` is needed, not `Box a`
    - `fmap` takes a function and a type
    - then applies the function to the type and returns it in a box
-}

instance Functor Box where
  fmap func (Box val) = Box (func val)

morePresents :: Box a -> Box [a]
morePresents (Box a) = Box [a]