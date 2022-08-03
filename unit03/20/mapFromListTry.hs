import Data.List ()
import qualified Data.Map as Map
import Data.Semigroup ()
import Data.Maybe ()

list :: [(Integer, Char)]
list = [(1,'a'), (2, 'b'), (4,'d')]

a :: Map.Map Integer Char
a = Map.fromList list

-- lookup :: Ord k => k -> Map k a -> Maybe a