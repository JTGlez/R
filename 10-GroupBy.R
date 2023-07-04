# Fundamentos de R: Organización de datos

# Cargamos el datasets de Pinguinos de Palmer
install.packages("palmerpenguins")
library(tidyverse)

# Usamos arrange() con un pipeline para ordenar las observaciones por su tamaño
# de pico en mm en orden ascendiente

penguins %>% 
  arrange(bill_length_mm)

# Esto ordena de forma descendiente
penguins %>% 
  arrange(-bill_length_mm)

# Guardamos el Tibble anterior en una variable
penguins2 <- penguins %>% arrange(-bill_length_mm)

View(penguins2)

# R admite el uso de la operación Group By para agrupar por categorías. En este
# ejemplo, se agrupan pinguinos por su isla (island), se eliminan observaciones
# que contengan valores nulos y se obtiene la media del tamaño del pico en cada
# uno de ellos.

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))

# Si quieremos obtener el tamaño máximo de pico de los pinguinos por isla
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(max_bill_length_mm = max(bill_length_mm))

# Agrupando por isla y por especies
penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarize(max_bill_length_mm = max(bill_length_mm), 
            mean_bill_length_mm = mean(bill_length_mm))

# Por último, con filter() se filtran valores únicamente para los pinguinos
# de especie Adelia
penguins %>% 
  filter(species == "Adelie")