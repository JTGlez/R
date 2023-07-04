# Fundamentos de R: Cuarteto de Anscombe

# En este ejemplo se analiza un dataset famoso: el cuarteto de Anscombre.
# En este, se tienen conjuntos de datos que, aunque parezcan ser idénticos,
# tienen diferencias no visibles sin alguna herramienta de visualización

install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)

# Veremos estadísticas por grupo: parece que todos son iguales.
quartet %>%
  group_by(set) %>%
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x, y))

# ¿Realmente son idénticos? Veamos con ggplot:
ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(~ set)

# Con dataSaurus podemos crear gráficas más complejas
install.packages('datasauRus')
library('datasauRus')

ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset)) + geom_point()+theme_void()+
  theme(legend.position = "none") + facet_wrap(~ dataset)