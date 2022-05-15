-- EJERCICIOS DEL LIBRO: DISCRETE MATHEMATICS USING A COMPUTER
-- *********************************************************** --
-- Exercise 3. Write a function that takes a character and returns True if the
-- character is ’a’ and False otherwise.

-- Entra un char y devuelve verdadero si el caracter es 'a' y falso en caso contrario
esA :: Char -> Bool
esA letra = letra == 'a'


-- Exercise 4. Write a function that takes a string and returns True if the string
-- is "hello" and False otherwise. This can be done by specifying each
-- element of the string in the list pattern (e.g. ’h’:’i’:[]).

-- Entra un string. Devolver verdadero si ese string dice "hello", y falso en
-- caso contrario. REVISAR LO DE LIST PATTERN.

esHello :: String -> Bool
esHello mensaje = mensaje == "hello"