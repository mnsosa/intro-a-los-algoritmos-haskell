# ALGORITMO GREEDY PARA COLOREAR GRAFOS

from tqdm import tqdm
import time


def pedir_nombres_de_vertices() -> list:
    """ Se le pide al usuario una lista de vértices

    Returns:
        list: lista de vértices
    """
    print("Introduzca de la siguiente manera los nombres de los vértices \n'nombre_vertice_1 nombre_vertice_2 ...'")
    vertices = input("Separados por espacio: \n")
    return vertices.split()

def pedir_aristas() -> list:
    """Pide las aristas en formato de matemática.
    Ejemplo: E = {{a, b}, {b, c}, {d, a}}

    Returns:
        list: diccionario de adyacencia
    """
    pass


if __name__ == "__main__":
    vertices = pedir_nombres_de_vertices()

    

