# Fundamentos de R: anotaciones, etiquetas y exportación

# Las anotaciones y etiquetas son empleadas para añadir información a las 
# gráficas y que su comprensión sea rápida para las personas interesadas en 
# el análisis realizado.

library(ggplot2)
library(palmerpenguins)

# En este ejemplo, usando el dataset de pinguinos se añaden etiquetas para
# el título del gráfico de dispersión: título, subtítulo, créditos y una anotación.

p <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Kristen Gorman") + 
  annotate("text", x = 220, y = 3500, label = "The Gentoos are the largest", color = "purple", fontface = "bold",
           size = 4.5, angle = 25)

# Es posible almacenar la gráfica en una variable y añadir anotaciones posteriores
p + annotate("text", x = 220, y = 3500, label = "The Gentoos are the largest")

# ggsave() permite exportar y guardar las gráficas en R en formato PNG o PDF.
# Esto también puede hacerse de la opción export en la sección de gráficas.

ggsave("Three Penguin Species.png")

