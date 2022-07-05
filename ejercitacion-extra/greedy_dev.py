# algo de greedy. (PENSANDO)

from random import choice


vertices = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n"]

lista_de_adyacencias = [["b", "c"],
                        ["a", "c"],
                        ["b", "a", "d"],
                        ["c", "e"],
                        ["d", "f",
                        ["e"],
                        [""]]]

adyacencias = dict(zip(vertices, lista_de_adyacencias))

colores = {"a": 1}

for v in vertices[1:]:
    # colores adyacentes que tiene el vertice v
    colores_adyacentes = [colores.get(ady, 0) for ady in adyacencias[v]]

    colores_disponibles = [c for c in colores.values() 
                            if c not in colores_adyacentes and c != 0]

    print("\nvértice:", v, "\ncolores adyacentes:", colores_adyacentes)
    print("colores disponibles:", colores_disponibles)
    print("colores usados:", set([c for c in colores.values()]))

    # si no hay colores disponibles, entonces se agrega uno más
    if len(colores_disponibles) == 0: 
        colores[v] = max(colores.values()) + 1

    # si el mínimo color es 0, entonces es que ningún vértice
    # adyacente tiene color asignado
    elif min(colores_adyacentes) == 0:
        colores[v] = 1

    # se coloca el mínimo color disponible
    else:
        colores[v] = min(colores_disponibles)

    print("colores: ", colores)

print(colores)

