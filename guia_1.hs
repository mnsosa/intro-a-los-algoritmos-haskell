-- 13

-- Definición de las funciones
-- a)
f :: Int -> Int
f x = 5*x 

-- b)
duplica :: Int -> Int 
duplica a = a + a

-- c)
por2 :: Int -> Int
por2 y = 2 * y

-- d)
multiplicar :: Int -> Int -> Int
multiplicar x y = x * y


-- 14. Función que calcula promedio de dos valores
promedio :: Float -> Float -> Float
promedio x y = (x + y) / 2


-- EJEMPLO DE FUNCION POR CASO
-- Definir una función que dé 5 para x >= a 3, y -2 en caso contrario
f1 :: Float -> Float 
f1 x    | x >= 3 = 5
        | x < 3 = -2

-- Definir una función que diga si un año es bisiesto o no
-- Un año es bisiesto si es divisible por 400 o es divisible por 4 pero no por 100

-- FORMA CON CONDICIONES BOOLEANAS
esBisiesto :: Integer -> Bool
esBisiesto año = (mod año 400) == 0 || (mod año 4) == 0 && (mod año 100) /= 0 
                
-- Usando pattern matching y booleanos                
esBisiesto2 :: Integer -> Bool
esBisiesto2 año | (mod año 400) == 0 = True -- Si es divisible por 400
                | (mod año 4) == 0 && (mod año 100) /= 0 = True -- Si es divisible por 4 pero no por 100
                | otherwise = False

-- TUPLAS --

-- Ejercicio 25 
-- a) Dada una terna de enteros, debe devolver su segundo elemento
segundo3 :: (Int, Int, Int) -> Int
segundo3 (x, y, z) = y


-- b) Dados dos enteros en tupla, devuelva una tupla ordenada de menor a mayor
-- CON PATTERN MATCHING
ordena :: (Int, Int) -> (Int, Int)
ordena (x, y)   | (x >= y)  = (y, x) 
                | (x < y)   = (x, y)    

-- SIN PATTERN MATCHING, usando los operadores nativos del Prelude
ordena2 :: (Int, Int) -> (Int, Int)
ordena2 (a, b) = (min a b, max a b)

-- c) Dado un número x, que representa el precio de un producto, y un par (menor, mayor)
-- que representa el rango de precios que uno espera encontrar, retorne "muy barato" si
-- x está por debajo del rango, "demasiado caro" si x está por arriba del rango, "hay 
-- que verlo bien" si x está entre menor y mayor.

rangoPrecioParametrizado :: Float -> (Float, Float) -> String
rangoPrecioParametrizado precio (menor, mayor)  | precio < menor = "muy barato"
                                                | precio > mayor = "demasiado caro"
                                                | otherwise = "hay que verlo bien"


-- d) Dada una terna de enteros, devuelve una terna de booleanos que indica 
-- si cada valor es mayor que 3

mayor3 :: (Int, Int, Int) -> (Bool, Bool, Bool)
mayor3 (a, b, c) = (a > 3, b > 3, c > 3)


-- e) Dada una terna de enteros, devuelve True si todos sus elementos son iguales
-- y False en caso contrario

todosIguales :: (Int, Int, Int) -> Bool
todosIguales (a, b, c) = (a == b) && (b == c)

