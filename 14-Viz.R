# Fundamentos de R: Herramientas de visualización

# R posee los siguientes conceptos centrales al momento de generar
# visualizaciones: estética, figuras geométricas, faucets y etiquetas con
# anotaciones.

library(ggplot2)

# Estética: La estética se refiere a las propiedades visuales de un objeto en un diagrama, 
# como el tamaño, la forma y el color. En ggplot2, puedes mapear estas propiedades visuales 
#a variables en tus datos. Por ejemplo, en un diagrama de dispersión, la estética incluiría 
#el tamaño y el color de los puntos que representan los datos.

# Crear un diagrama de dispersión con colores y tamaños basados en variables
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species, size = Petal.Length)) +
  geom_point()


# Figuras geométricas: Las figuras geométricas se utilizan para representar los datos en un diagrama. E
# En ggplot2, puedes elegir diferentes figuras geométricas según el tipo de datos que tienes. 
# Por ejemplo, puedes usar puntos para un diagrama de dispersión, barras para un gráfico de barras 
# o líneas para un diagrama de líneas.

# Crear un gráfico de barras
ggplot(data = diamonds) +
  geom_bar(aes(x = cut))

# Facetas: Las facetas te permiten dividir tus datos en grupos más pequeños y crear diagramas 
# separados para cada grupo. Esto es útil cuando tienes variables categóricas adicionales que 
# deseas tener en cuenta en tu visualización. Por ejemplo, puedes crear subdiagramas separados 
# para cada grupo de datos basados en una variable categórica.

# Crear diagramas de dispersión separados por grupos
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  facet_wrap(~Species)


# Etiquetas y anotaciones: Las etiquetas y anotaciones te permiten agregar texto a tu diagrama 
# para comunicar información adicional o resaltar puntos importantes. Puedes agregar títulos, 
# subtítulos, leyendas y etiquetas a tus diagramas en ggplot2. Esto te ayuda a proporcionar 
# contexto y claridad a tu visualización.

# Agregar título y etiquetas a un diagrama
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(title = "Relación entre peso y consumo de combustible",
       x = "Peso", y = "Consumo de combustible")