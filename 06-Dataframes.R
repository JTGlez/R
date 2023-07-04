# Fundamentos de R: dataframes

#install.packages("tidyverse")

# Cargamos ggplot2
library(ggplot2)

# Cargamos el dataset de diamantes
data("diamonds")

# Con View se abre una nueva ventana con el dataframe completo, mientras que con
# head solo se muestran 6 observaciones.
View(diamonds)
head(diamonds)

# Verificamos la estructura del dataset
str(diamonds)

# Si solo queremos los nombres de las columnas, usamos colnames()
colnames(diamonds)

library(tidyverse)

# Añadir nuevas columnas: multiplica los valores de carat por 100
mutate(diamonds, carat_2=carat*100)

