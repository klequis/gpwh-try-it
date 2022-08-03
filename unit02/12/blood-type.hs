{-
    - Name: Name
    - Sex: Sex
    - Age (years): Int
    - Height (inches): Int
    - Weight (pounds): Int
    - Blood type: BloodType

-}
type FirstName = String
type LastName = String
data Name = Name FirstName LastName
  | NameWithMiddle FirstName MiddleName LastName
data Sex = Male | Female
type Age = Int
type Height = Int
type Weight = Int
type MiddleName = String


data RhType = Pos | Neg
data ABOType = A | B | AB | O
data BloodType = BloodType ABOType RhType

patient1BT :: BloodType
patient1BT = BloodType A Pos
patient2BT :: BloodType
patient2BT = BloodType O Neg
patient3BT :: BloodType
patient3BT = BloodType AB Pos

{-
    Matching blood types
    - A can donate to A and AB.
    - B can donate to B and AB.
    - AB can donate only to AB.
    - O can donate to anybody.

-}

canDonateTo :: BloodType -> BloodType -> Bool
canDonateTo (BloodType O _) _ = True
canDonateTo _ (BloodType AB _) = True
canDonateTo (BloodType A _) (BloodType A _) = True
canDonateTo (BloodType B _) (BloodType B _) = True
canDonateTo _ _ = False --otherwise

-- 12.12

data Patient  = Patient Name Sex Age Height Weight BloodType

johnDoe :: Patient
johnDoe = Patient (Name "John" "Doe") Male 30 74 200 (BloodType AB Pos)

janeESmith :: Patient
janeESmith = Patient (NameWithMiddle "Jane" "Elizabeth" "Smith") Female 28 62 140 (BloodType O Neg)
