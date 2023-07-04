# Fundamentos de R: Tibbles

# Los tibbles son como marcos de datos simplificados que se configuran 
# automáticamente para mostrar solo las 10 primeras filas de un conjunto de 
# datos, y solo tantas columnas como puedan caber en la pantalla. 

library(tidyverse)
data(diamonds)

# Verificamos la estructura del dataframe
View(diamonds)

# Se usa la función as_tibble() para transformar un dataframe en un Tibble
# y visualizarlos rápidamente en la consola de R Studio.
as_tibble(diamonds)
