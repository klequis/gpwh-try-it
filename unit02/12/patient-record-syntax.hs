-- Record Syntax

type FirstName = String
type LastName = String
data Name = Name FirstName LastName
  | NameWithMiddle FirstName MiddleName LastName
data Sex = Male | Female
-- type Age = Int
-- type Height = Int
-- type Weight = Int
type MiddleName = String


data RhType = Pos | Neg
data ABOType = A | B | AB | O
data BloodType = BloodType ABOType RhType

data Patient = Patient { name :: Name
                        , sex :: Sex
                        , age :: Int
                        , height :: Int
                        , weight :: Int
                        , bloodType :: BloodType
}

jackieSmith :: Patient
jackieSmith = Patient { name = Name "Jackie" "Smith"
                      , age = 43
                      , sex = Female
                      , height = 62
                      , weight = 115
                      , bloodType = BloodType O Neg }

johnDoe :: Patient
johnDoe = Patient (Name "John" "Doe") Male 30 74 200 (BloodType AB Pos)

-- With record syntax you don't have to write getters and setters
-- Getting 
a = height jackieSmith

-- Setting
b = jackieSmith { age = 44 }

someFunction :: p -> p
someFunction x = x