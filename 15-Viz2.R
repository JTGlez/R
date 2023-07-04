# Fundamentos en R: Mejoras a visualizaciones en R

# Estética: propiedad visual de una gráfica. Los puntos en una gráfica, por
# ejemplo, pueden tener diferentes formas
library(ggplot2)
library(palmerpenguins)

# La siguiente gráfica añade un color distinto para cada especie de pinguino.
# Se observa que los pinguinos Gentoo son los más robustos y con mayores aletas.
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

# Adicionalmente, podemos resaltar cada tipo de observación (Adelia, Chinstrap
# y Gentoo) con una figura geométrica usando shape. Una variable se puede usar
# para más de una estética.
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species))

# Si usamos como tercer parámetro de estética la especie, cada forma coloreada
# tendrá un tamaño distinto
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species, size = species))

# Podemos modificar el canal alpha de los colores usados para añadir o quitar transparencia
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species))

# También puede añadirse una estética de forma global a todo el gráfico. Estas
# configuraciones globales se añaden fuera de la función aes().
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = "purple")

# 3 configuraciones básicas de estética: color, tamaño y forma.