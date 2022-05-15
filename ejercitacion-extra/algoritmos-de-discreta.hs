-- Algoritmo que se basa en el teorema de 'Desarrollo en base b' (para b >= 2)
-- Convierte un número decimal n a la base b.
-- Devuelve el resultado en una lista.

cambioBase :: Int -> Int -> [Int]

cambioBase 0 b = []
cambioBase n b = (cambioBase (div n b) b) ++ [(mod n b)] 

