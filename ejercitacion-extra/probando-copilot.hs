-- función que calcula el mcd de dos números
mcd :: Int -> Int -> Int
mcd a b
    | b == 0 = a
    | otherwise = mcd b (mod a b)

-- función que calcula el mcm de dos números
mcm :: Int -> Int -> Int
mcm a b = (a * b) `div` (mcd a b)

-- función que calcula el mcm de una lista de números
mcmList :: [Int] -> Int
mcmList [] = 1
mcmList (x:xs) = mcm x (mcmList xs)

-- función que calcule recursivamente el mcm de una lista de números
mcmRec :: [Int] -> Int
mcmRec [] = 1
mcmRec (x:xs) = mcm x (mcmRec xs)

-- función que calcule sin recursión el mcm de una lista de números
mcmSinRec :: [Int] -> Int
mcmSinRec [] = 1
mcmSinRec (x:xs) = foldl mcm x xs

-- función que calcule el desarrollo en base b de un número a
desarrollo :: Int -> Int -> Int
desarrollo a b
    | b == 0 = 1
    | b == 1 = a
    | otherwise = (a * (desarrollo a (b - 1)))

-- función que calcule el binario de un numero
binario :: Int -> [Int]
binario 0 = []
binario n = binario (div n 2) ++ [mod n 2]

-- función que calcule el factorial de un número
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- función que imprima "FLORENCIA NIETO" 15 veces en una línea
florenciaNieto :: Int -> String
florenciaNieto n
    | n == 0 = ""
    | otherwise = "FLORENCIA NIETO" ++ "\n" ++ florenciaNieto (n - 1)

-- función que guarde en una lista el valor de "FLORENCIA" si el número es congruente con 8
florencia :: Int -> [String]
florencia n
    | n == 0 = []
    | mod n 8 == 0 = "FLORENCIA" : florencia (n - 1)
    | otherwise = florencia (n - 1)

-- función que haga el árbol de decisión de una lista
arbolito :: [Int] -> [Int]
arbolito [] = []
arbolito (x:xs)
    | x == 0 = 0 : arbolito xs
    | otherwise = 1 : arbolito xs

-- función soloPares
soloPares :: [Int] -> [Int]
soloPares [] = []
soloPares (x:xs)
    | mod x 2 == 0 = x : soloPares xs
    | otherwise = soloPares xs

-- función menoresQueDiez
menoresQueDiez :: [Int] -> [Int]
menoresQueDiez [] = []
menoresQueDiez (x:xs)
    | x < 10 = x : menoresQueDiez xs
    | otherwise = menoresQueDiez xs

-- contamos con una base de datos de películas representadas con una lista de tuplas. cada tupla
-- contiene la siguiente información: ((nombre de la película), (año de estreno), (duración de la película),(nombre del director))

-- verTodas que dada una lista de películas devuelva el tiempo que tardaría en verlas a todas
verTodas :: [(String, Int, Int, String)] -> Int
verTodas [] = 0
verTodas ((nombre, anio, duracion, director):xs) = duracion + verTodas xs

-- función estrenos que dada una lista de películas devuelva el listado de películas que se estrenaron en el año 2016
estrenos :: [(String, Int, Int, String)] -> [String]
estrenos [] = []
estrenos ((nombre, anio, duracion, director):xs)
    | anio == 2016 = nombre : estrenos xs
    | otherwise = estrenos xs

-- función filmografía que dada una lista de películas y el nombre de un director, devuelve el listado de películas de ese director
filmografia :: [(String, Int, Int, String)] -> String -> [String]
filmografia [] _ = []
filmografia ((nombre, anio, duracion, director):xs) nombreDirector
    | director == nombreDirector = nombre : filmografia xs nombreDirector
    | otherwise = filmografia xs nombreDirector


-- función duración que dada una lista de películas y el nombre de una película, devuelve la duración de esa película
duracion :: [(String, Int, Int, String)] -> String -> Int
duracion [] _ = 0
duracion ((nombre, anio, duracion, director):xs) nombrePelicula
    | nombre == nombrePelicula = duracion
    | otherwise = duracion xs nombrePelicula

-- VENTAS DE PC

-- Una empresa de ventas de computadoras está desarrollando un sistema para llevar registro de ventas.
-- Para ello cuenta con la siguiente información:
-- Lista de los vendedores de la empresa:
vendedores = ["Martin", "Diego", "Claudio", "José"]

-- Lista de ventas de la forma (fecha, nombre del vendedor, lista de componentes de la máquina)
-- la fecha es una tupla de la forma (día, mes, año)
-- los componentes son strings.

ventas = [((1, 2, 2006), "Martin", ["monitor GPRS 3000", "motherboard ASUS 1500"]),
        ((1, 2, 2006), "Diego", ["monitor ASC 543", "motherboard Pindorcho"]),
        ((10, 2, 2006), "Martin", ["monitor ASC 543", "motherboard ASUS 1200"]),
        ((12, 2, 2006), "Diego", ["monitor GPRS 3000", "motherboard ASUS 1200"]),
        ((4, 3, 2006), "Diego", ["monitor GPRS 3000", "motherboard ASUS 1500"])]

-- Lista de precios de los componentes de la forma (componente, precio)
precios :: [(String, Int)]
precios = [("monitor GPRS 3000", 200), ("motherboard ASUS 1500", 120),
        ("monitor ASC 543", 250), ("motherboard ASUS 1200", 100),
        ("motherboard Pindorcho", 30)]

-- precioMaquina: dada una lista de componentes, devuelve el precio de la máquina que se puede armar con esos componentes
-- ejemplo: precioMaquina ["monitor GPRS 3000", "motherboard ASUS 1500"] = 320 (200 del monitor + 120 de la motherboard)
precioComponente :: String -> Int
precioComponente componente = head [precio | (componente2, precio) <- precios, componente == componente2]
 
precioMaquina :: [String] -> Int
precioMaquina componentes = sum [precioComponente componente | componente <- componentes]

-- 