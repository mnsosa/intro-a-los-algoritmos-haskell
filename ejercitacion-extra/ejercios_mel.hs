-- "hola" -> "h o l a"

expandir :: String -> String
expandir (x:xs) 
    | (length xs > 1) = [x] ++ " " ++ expandir xs
    | otherwise = [x] ++ " " ++ xs  


prueba = expandir "hola"

-- UN STRING ES [Char]
-- x:xs ==> x es Char, xs es [Char]