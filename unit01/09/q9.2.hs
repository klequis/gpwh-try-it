{-
  Q9.2 Your isPalindrome function from lesson 6 doesn’t 
  handle sentences with spaces or capitals. Use map and 
  filter to make sure the phrase “A man a plan a canal Panama” is
  recognized as a palindrome.

  `map`
  > map (+1) [1, 2, 3]
  [2,3,4]

  `filter`
  > filter odd [1, 2, 3]
  [1,3]
  
-}

import Data.Char ( toLower )

isPalindrome :: [Char] -> Bool
isPalindrome text = processedText == reverse processedText
  where noSpaces      = filter (/= ' ') text
        processedText = map toLower noSpaces

isIt :: [Char] -> Bool
isIt text = str1 == str2
  where str1 = map toLower (filter (/= ' ') text)
        str2 = reverse str1

{-
  import Data.Char
  stripLeadingWhitespace :: String -> String
  stripLeadingWhitespace = unlines . map (dropWhile isSpace) . lines
-}