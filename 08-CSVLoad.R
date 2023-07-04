# Fundamentos de R: Importación de archivos

# Usando la función data() es posible observar los dataset precargados 
# en el entorno de R.

data()

# Para cargar estos datasets como dataframes, solo es necesario añadir el
# nombre del dataset a la función data():
data(mtcars)
mtcars

# El paquete Readr permite cargar archivos .csv, .tsv, .fwf y .log en formato
# rectangular usando las herramientas de tidyversey cuenta con las siguiente 
# funciones:

#   read_csv(): Archivos de valores separados por comas (.csv)
    
#   read_tsv(): Archivos de valores separados por tabuladores
    
#   read_delim(): Archivos delimitados en general
    
#   read_fwf(): Archivos de ancho fijo
    
#   read_table(): Archivos tabulares cuyas columnas están separadas por espacios en blanco
    
#   read_log(): Archivos de registro de la web


# readr viene con archivos de muestra como ejemplos, los cuales se pueden 
# consultar con la función readr_example()
readr_example()

# Cargando el dataset de mtcars:
read_csv(readr_example("mtcars.csv"))

# Para importar datos de hojas de cálculo de Excel a R se usa el paquete readxl,
# que admite tanto .xls como xlsx.
library(readxl)

# Al igual que readr, viene con ejemplos de prueba
read_excel(readxl_example("type-me.xlsx"))

# Con excel_sheets() se pueden listar los nombres de las hojas individuales
excel_sheets(readxl_example("type-me.xlsx"))

# Por último, se puede especificar la carga de solo una hoja específica
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")







