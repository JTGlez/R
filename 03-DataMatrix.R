# Fundamentos de R: dataframes, archivos y matrices.

# Similar a los datasets de Pandas, R admite la creación de dataframes con el
# método data.frame(), la cual considera a los vectores como entradas.

dataframe = data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
dataframe

# Archivos

# La función dir.create() permite crear carpetas para guardar archivos.
dir.create("R/Pruebas")

# La función file.create() permite crear archivos en blanco con su extensión.
# Si la creación es exitosa, se obtiene de salida un TRUE (si no, un FALSE).
file.create ("R/Pruebas/new_csv_file.csv")

# Es posible copiar un archivo con file.copy(). En los argumentos, se agrega
# el nombre del archivo a copiar y el nombre de la carpeta destino.

file.create ("R/new_text_file.txt")
file.copy("R/new_text_file.txt", "R/Pruebas")

# Para eliminar archivos, se usa la función Unlink:

unlink("R/new_text_file.txt")

# Las matrices se crean con la función matrix(), que tiene como 2 argumentos
# principales un vector de entrada y, después, la dimensión de la matriz.
# Adicionalmente se puede especificar el número de filas o columnas con
# nrow para las filas y ncol para las columnas.

# Esta matriz genera 2 filas que van del número 3 al 8 de 2x3.
matriz = matrix(c(3:8), nrow = 2)
matriz

# Podemos también especificar el número de columnas
matriz2 = matrix(c(3:8), ncol= 2)
matriz2









