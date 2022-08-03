-- {-# LANGUAGE NoImplicitPrelude #-}

import Prelude (Functor, id, fmap)

{-
    <$>
    Hey, guess what?
    Applicative doesn't lift anything.
    It works with functions that are alread in a context.
-}

class Functor f => Applicative f where
  pure :: a -> f a
    
  (<*>) :: f (a -> b) -> f a -> f b
  (<*>) = liftA2 id

  liftA2 :: (a -> b -> c) -> f a -> f b -> f c
  liftA2 f x = (<*>) (fmap f x)