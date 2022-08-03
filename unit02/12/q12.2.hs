{-
  Implement a patientSummary function that uses your final Patient 
  type. patientSummary should output a string that looks like this:

  **************
  Patient Name: Smith, John
  Sex: Male
  Age: 46
  Height: 72 in.
  Weight: 210 lbs.
  Blood Type: AB+
  **************
-}

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


showSex :: Sex -> [Char]
showSex Male = "Male"
showSex Female = "Female"


showRh :: RhType -> String
showRh Pos = "+"
showRh Neg = "-"

showABO :: ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"
showBloodType :: BloodType -> String
showBloodType (BloodType abo rh) = showABO abo ++ showRh rh

patientSummary :: Patient -> String
patientSummary patient = "**************\n" ++
  "Sex: " ++ showSex (sex patient) ++ "\n" ++
  "Age: " ++ show (age patient) ++ "\n" ++
  "Height: " ++ show (height patient) ++ " in.\n" ++
  "Weight: " ++ show (weight patient) ++ " lbs.\n" ++
  "Blood Type: " ++ showBloodType (bloodType patient) ++
  "\n**************\n"


printSummary patient = do
  let bt = showBloodType (bloodType patient)
  let s = showSex (sex patient)
  putStrLn (bt ++ "|" ++ s)