fn1 :: Int -> Maybe Int
fn1 x = if x > 10
        then Nothing
        else Just 5

fn2 :: Num a => Int -> Maybe a
fn2 x = if x > 10
        then Nothing
        else Just 5

fn3 :: Maybe Int -> Int
fn3 x = if x > Just 10
        then 1
        else 2

fn :: Functor f => f a -> f (Maybe a)
fn = fmap Just
