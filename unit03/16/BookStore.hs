type FirstName = String
type LastName = String
type MiddleName = String

data Name = Name FirstName LastName
    | NameWithMiddle FirstName MiddleName LastName
    | TwoInitialsWithLast Char Char LastName
    | FirstNameWithTwoInits FirstName Char Char


data Author = Author Name

data Artist = Person Name | Band String

data Creator = AuthorCreator Author | ArtistCreator Artist
  
hpLovecraft :: Creator
hpLovecraft = AuthorCreator
  (Author (TwoInitialsWithLast 'H' 'P' "Lovecraft"))

data Book = Book {
    author    :: Creator
  , isbn      :: String
  , bookTitle :: String
  , bookYear  :: Int
  , bookPrice :: Double
} 

data VinylRecord = VinylRecord {
    artist       :: Creator
  , recordTitle  :: String
  , recordYear   :: Int
  , recordPrice  :: Double
}

data CollectibleToy = CollectibleToy {
    name :: String
  , descrption :: String
  , toyPrice :: Double
}

data Pamphlet = Pamphlet {
    pamphletTitle :: String
  , description   :: String
  , contact       :: String
}

data StoreItem = BookItem Book | RecordItem VinylRecord | ToyItem CollectibleToy | PamphletItem Pamphlet

price :: StoreItem -> Double
price (BookItem book) = bookPrice book
price (RecordItem record) = recordPrice record
price (ToyItem toy) = toyPrice toy

{-
    Quick check 16.3 Assume that Creator is an instance of Show. Write a madeBy function that
    has the type StoreItem -> String and does its best to determine who made the StoreItem.
-}

-- THIS EXAMPLE IN THE BOOK DOESN'T WORK
-- COULD SOMETHING HIGHER UP IN THIS MODULE BE WORNG?
-- madeBy :: StoreItem -> String
-- madeBy (BookItem book) = show (author book)
-- madeBy (RecordItem record) = show (artist record)
-- madeBy (ToyItem toy) = name toy

-- madeBy :: StoreItem -> String
-- madeBy (BookItem book) = show (author book)
-- madeBy (RecordItem record) = show (artist record)
-- madeBy _ = "unknown"

{-
    Circle: radius by two pi (3.1415)
    Rectangle: width height
    Square: side
-}

type Radius = Double
type Width = Double
type Height = Double
type Side = Double

data Shape = Circle Radius | Square Side | Rectangle Width Height

perimiter :: Shape -> Double
perimiter (Circle radius) = radius^2 * pi
perimiter (Square side) = side * 4
perimiter (Rectangle width height) = (width + height) * 2


