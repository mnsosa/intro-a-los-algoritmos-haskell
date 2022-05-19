cambioBase :: Int -> Int -> [Int]
-- Algoritmo que se basa en el teorema de 'Desarrollo en base b' (para b >= 2)
-- Convierte un número decimal n a la base b.
-- Devuelve el resultado en una lista.

cambioBase 0 b = []
cambioBase n b = (cambioBase (div n b) b) ++ [(mod n b)] 

--------------------------------------------------------------------------

aBaseDecimal :: [Int] -> Int -> Int
-- Pasar cualquier número en base b a la base decimal 

aBaseDecimal [] b = 0
aBaseDecimal (x:xs) b = x*b^(length xs) + aBaseDecimal xs b

--------------------------------------------------------------------------

-- Ejemplo de uso
-- Tengo los dos números 2234 y 2310 en base 5 y quiero sumarlos
-- y ver el resultado en base 5

x_1_decimal = aBaseDecimal [2, 2, 3, 4] 5
x_2_decimal = aBaseDecimal [2, 3, 1, 0] 5

suma_decimal = x_1_decimal + x_2_decimal
resultado_base_5 = cambioBase suma_decimal 5

--------------------------------------------------------------------------

-- Haciendo una función composición

cambioDeBaseABase :: [Int] -> Int -> Int -> [Int]
-- Entra una lista de los valores de un número en una base b 
-- y devuelve una lista de valores del número en otra base b
-- [valores] -> base original -> base de salida -> resultado

cambioDeBaseABase (x:xs) b_in b_out = cambioBase (aBaseDecimal (x:xs) b_in) b_out

-- Ejemplo de uso
-- cambioDeBaseABase [2, 2, 3, 4] 5 2
-- Cambia el número 2234 de base 5 y a la base 2


--------------------------------------------------------------------------

-- Cálculo del MCD (Máximo Común Divisor) utilizando el algoritmo
-- del mismísimo señor Euclides.

mcd_euclides :: Int -> Int -> Int

mcd_euclides r 0 = r
mcd_euclides a b = mcd_euclides b (mod a b)


