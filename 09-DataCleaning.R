# Fundamentos de R: limpieza de datos

# Los siguientes paquetes se emplean para tareas de limpieza de datasets
install.packages("here")
library(here)

install.packages("skimr")
library(skimr)

install.packages("janitor")
library(janitor)

#install.packages("dplyr")
library(dplyr)

# Cargamos el datasets de Pinguinos de Palmer
install.packages("palmerpenguins")
library(palmerpenguins)

# La función skim_without_charts permite obtener un resumen general del dataset
# Primero muestra un resumen de las filas y columnas, el tipo de datos presente,
# su frecuencia y, por último, un resumen de las variables, valores nulos,
# ratio de completitud (observaciones sin nulos), ordenamientos, valores únicos
# y, en el caso de las variables numéricas, la media por cada columna.
skim_without_charts(penguins)

# glimpse() permite obtener un vistazo más compacto del dataframe junto con
# head()
glimpse(penguins)
head(penguins)

# Si queremos solo concentrarnos en la columna species, se puede hacer una 
# canalización para solo recuperar esa columna y sus datos.
penguins %>% 
  select(species)

# Por otra parte, si queremos todas las columnas excepto species:
penguins %>% 
  select(-species)

# Para renombrar columnas usamos rename():
penguins %>% 
  rename(island_new = island)

# rename_with() permite formatear los nombres de las columnas para que todas
# ellas se encuentren bajo un mismo formato coherente. En este caso, todas
# las columnas pasarán a estar en mayúsculas.
rename_with(penguins, toupper)

# Y para minúsculas
rename_with(penguins, tolower)

# La función clean_names() verifica que solo haya caracteres, números y guiones
# bajos en los nombres, eliminando cualquier otro caracter extraño.
clean_names(penguins)


