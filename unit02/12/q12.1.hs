{-
    Quick check 12.1 Rewrite patientInfo to use your patientName
    type, reducing the total arguments needed to three instead 
    of four.

-}
patientInfo1 :: String -> String -> Int -> Int -> String
patientInfo1 fname lname age height = name ++ " " ++ ageHeight
  where name      = lname ++ ", " ++ fname
        ageHeight = "(" ++ show age ++ "yrs. " ++ show height ++ "in.)"


type Firstname = String
type Lastname = String
type PatientName = (Firstname, Lastname)

patientInfo :: PatientName -> Int -> Int -> String
patientInfo (fname, lname) age height = name ++ " " ++ ageHeight
  where name      = lname ++ ", " ++ fname
        ageHeight = "(" ++ show age ++ "yrs. " ++ show height ++ "in.)"