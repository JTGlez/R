# Fundamentos de R: Geometrías de visualización con GGPlot y Faucets

library(ggplot2)
library(palmerpenguins)

# Los objetos geométricos son la forma en que R representa datos, lo que 
# incluye puntos, barras y líneas.

# Este primer gráfico muestra un scatterplot o gráfico de dispersión
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))


# Con geom_smooth se cambia el gráfico de dispersión por una línea suavizada
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Ambas geometrías se pueden combinar en una sola gráfica
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Es posible crear una línea para cada tipo de especie como se muestra:
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

# Jitter es un diagrama de dispersión con ruido añadido para hacer que estos sean
# más fáciles de identificar de forma individual
ggplot(data = penguins) +
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Ahora usaremos el dataframe de diamantes de ggplot2

# Usamos geom_bar() para crear gráficos de barras. R cuenta cuántas veces aparece
# cada ocurrencia a lo largo de todo el dataframe, por lo que no es necesario
# definir a Y.
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

# Es posible usar las propiedades estéticas usadas anteriormente, como el color
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, color = cut))

# Esto solo muestra un color exterior, pero si se desea un relleno en su lugar,
# usamos fill:
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))

# Este diagrama muestra diferentes combinaciones entre corte y claridad en una
# gráfica de barras apiladas, de manera que es posible diferenciar para cada
# uno de los cortes la proporción de claridad en cada uno de ellos.
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))


# Las facetas permite generar gráficas individuales para cada categoría
# en una variable. En este caso, se separa la gráfica anterior en los 5 cortes
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity)) + facet_wrap(~ cut)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) + facet_wrap(~ cut)
