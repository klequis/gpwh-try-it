data Box a = Box a deriving Show

data Triple a = Triple a a a deriving Show

type Point3D = Triple Double

aPoint :: Point3D
aPoint = Triple 0.1 53.2 12.3

first :: Triple a -> a
first (Triple x _ _) = x

second :: Triple a -> a
second (Triple _ x _ ) = x

third :: Triple a -> a
third (Triple _ _ x) = x

toList :: Triple a -> [a]
toList (Triple x y z) = [x,y,z]

transform :: (a -> a) -> Triple a -> Triple a
transform f (Triple x y z) = Triple (f x) (f y) (f z)

data List a = Empty | Cons a (List a) deriving Show

ourListEx1 :: List Int
ourListEx1 = Cons 1 (Cons 2 (Cons 3 Empty))

ourMap :: (a -> b) -> List a -> List b
ourMap _ Empty = Empty
ourMap func (Cons a rest) = Cons (func a) (ourMap func rest)

