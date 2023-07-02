# Funciones core de Análisis de Datos con R y canalizaciones
# ggplot2: gráficas y visualizaciones de datos
# dplry: funciones para la manipulación de datos (filtrados o modificaciones)
# tidyr: limpieza de datos con tidy data (dataframes)
# readr: leer csv e importarlos a R


# Un Pipe o canalización es una herramienta de R para expresar una secuencia
# de múltiples operaciones, lo que se representa con '%>%'. Similar a MongoDB,
# la salida de una capa es la entrada de la siguiente.

# Como ejemplo, cargamos el dataset del efecto de la vitamina C y el crecimiento 
# dental de los conejillos de indios.

data("ToothGrowth")
View(ToothGrowth)

# install.packages("dplyr")
library(dplyr)

# filter() permite filtrar datos según una condición. La salida serán 
# observaciones donde dose es exactamente igual a 0.5
filtered_tg <- filter(ToothGrowth, dose == 0.5)
View(filtered_tg)