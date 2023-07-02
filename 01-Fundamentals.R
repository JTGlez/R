# Fundamentos de R: Tipos de datos, funciones, vectores y listas.

# Función print para imprimir cadenas
print("Coding in R")

# Obtener ayuda de una función en la ventana inferior derecha en RStudio
?print()

# Las variables en R se comportan como objetos. Se nombran iniciando con letras
# minúsculas siguiendo la convención snake-case. La asignación es con <-
first_variable <- "Esto es una variable"
second_variable <- 12.5


# Los vectores son grupos de elementos del mismo tipo almacenados de forma
# secuencial. Al igual que Python, se tienen 4 tipos de datos principales:
# enteros, double, lógicos y caracteres.

# Los vectores atómicos (o arrays) son las estructuras más típicas de R y 
# se inicializan de la siguiente manera usando la función combine:
vec_1 <- c(13, 48.5, 71, 101.5, 2)

# Para indicar valores puramente enteros, se coloca una L tras cada valor
vec_2 <- c(1L, 5L, 15L)

# A continuación se muestran vectores de cadenas o booleanos:
vec_3 <-c("Sara" , "Lisa" , "Anna")
vec_4 <-c(TRUE, FALSE, TRUE)

# Los vectores tienen 2 propiedades: tipo y longitud. Para el tipo usamos
# la función typeof():
typeof(vec_1)
typeof(vec_2)
typeof(vec_3)
typeof(vec_4)

# Para la longitud, usamos length():
length(vec_1)
length(vec_2)
length(vec_3)
length(vec_4)

# Adicionalmente se puede verificar lógicamente si un vector atómico es de
# cierto tipo usando las funciones is: is.logical() is.double(), is.integer()
# e is.character():

is.integer(vec_1) # FALSE
is.integer(vec_2) # TRUE

# R permite "nombrar" a los elementos de los vectores para hacer referencias
# a ellos de la siguiente forma:

x <- c(1L, 3L, 5L)
names(x) <- c("a", "b", "c")

x # Imprime: a b c
  #          1 2 3

# Por otra parte, R cuenta con una implementación de Listas, las cuales pueden
# contener elementos de cualquier tipo; como lo es Python. Incluso, pueden 
# tener listas como elementos. 

# Para crearlas, se usa la función list():
lista_1 <- list("a", 1L, 1.5, TRUE)

# La anidación de listas es posible, donde el primer elemento de la lista
# creada, a su vez, es una lista que contiene 3 double (al no tener L).
lista_2 <- list(list(list(1 , 3, 5)))

# Para conocer el tipo de los elementos de la lista, se usa la función str():
str(lista_1)
str(lista_2)

# Adicionalmente, también se les puede poner nombre. En este caso, desde la
# creación de la lista es posible asignarle un nombre a los elementos
# dentro de ella:

lista_3 <- list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)

# Muestra en la consola el valor asociado a esos elementos (similar a una
# clave-valor).
'Chicago'
'New York'
'Los Angeles'
