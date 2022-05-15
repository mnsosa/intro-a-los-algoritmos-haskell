-- TEMA: Funciones, listas, recursión e inducción --
---------------------------------------------------- 

-- Listas

-- Las listas es como una tupla en el que sí o sí tienen
-- que ser del mismo tipo todos los elementos

-- Operadores de listas

-- Definamos una lista para utilizar como ejemplo

ys = [-4 .. 10]

-- length ys -- Devuelve el largo de ys 

-- ys !! 0 -- Devuelve -4
-- ys !! n devuelve el valor que está en la posición número n
-- Es como decir el an ("a sub n") con n perteneciente a N0 (naturales con cero)

-- Elegir los primeros n lugares se hace:
-- take n ys
-- Devuelve una lista con los primeros n elementos de ys
tres_primeros = take 3 ys

-- drop n ys
-- Devuelve una lista que NO contiene los primeros n de ys
menos_los_3_primeros = drop 3 ys

-- Concatenación
-- Defino otra lista ts
ts :: [Int]
ts = [3 .. 8]

concatenados = ys ++ ts


-- Pegar a último
-- ys ++ [x], siendo x un elemento del mismo tipo que de los de ys
-- Agrega el elemento x al final de ys
-- En realidad esto es concatenar metiendo el valor que queremos 
-- en una lista de un solo valor.


-- Pegar
-- x : ys, agrega el elemento x al principio de ys

-- head
-- Toma una lista ys y devuelve su primer elemento
-- head ys

-- tail
-- Toma una lista ys y devuelve la sublista que resulta de 
-- eliminar al primer elemento
-- tail ys 

-- a) soloPares : [Int] → [Int], que dada una lista de enteros 
-- ys devuelve una lista s´olo con los n´umeros
-- pares contenidos en ys, en el mismo orden y con las 
-- mismas repeticiones (si las hubiera).
-- Por ejemplo: soloPares.[3, 0, −2, 12] = [0, −2, 12]

soloPares :: [Int] -> [Int]
soloPares [] = []   -- caso base. cuando tenemos una lista vacía
                    -- devolvemos una lista vacía (XD)
                    
soloPares (x:xs)    | (mod x 2) == 0 = x : (soloPares xs)   -- veo si es par
                    | otherwise = soloPares xs


-- (x:xs) -> x es el head, xs es el tail (lo que queda sin el primero)

-- lista = [1, 2, 3]

-- soloPares lista
--     (x1:xs1) = lista
--     es x1 par?? ((mod x1 2) == 0)
--         no: 
--             soloPares xs1 -- [2, 3]
--                 (x2:xs2) = xs1 
--                 es x2 par? (si 2 es par)
--                     sí: 
--                         2 : (soloPares xs2) -- xs2 = [3]
--                             (x3:xs3) = xs2 -- x3 = 3; xs3 = []
--                             es x3 par? 
--                                 no: soloPares xs3
--                                     como xs3 es [], se ejecuta
--                                     la primera definicion (caso base)

--                                     soloPares xs3 => []


a = [3, 4, 1, 5, 1, 50, 3]
-- a = [a0, a1, a2, ...]
-- -- sumatoria de a = 3 + 4 + 1 + 5 + 1 + 50 + 3

-- caso base
-- a0 = 3
-- sum0 = 3

-- a1 = 4
-- sum1 = sum0 + a1 = 3 + 4 = 7

-- sum2 = sum1 + a2 = 7 + 1 = 8

-- sum3 = sum2 + a3 = 8 + 5 = 13

-- DEFINICIÓN RECURSIVA DE SUMATORIA
-- sum_0 = a_0 (CASO BASE)
-- sum_n = sum_n-1 + a_n (RECURSIÓN)

sumatoria :: Num a => [a] -> a

sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs


-- sumatoria a -- [3, 4, 1, 5, 1, 50, 3]
--         => 3 + sumatoria [4, 1, 5, 1, 50, 3]
--                     => 4 + sumatoria [1, 5, 1, 50, 3]
--                             => 1 + sumatoria [5, 1, 50, 3]
--                                     => 5 + sumatoria [1, 50, 3]
--                                         => 1 + sumatoria [50, 3]
--                                                 => 50 + sumatoria [3]
--                                                         => 3 + sumatoria []
--                                                         = 3 + 0
                                            
-- sumatoria a -- [3, 4, 1, 5, 1, 50, 3]
--         => 67


superaNota :: Int -> [Int] -> Int
superaNota nota [] = 0
superaNota nota (n1: ns)    | (n1 >= nota) = 1 + (superaNota nota ns)
                            | otherwise = superaNota nota ns



