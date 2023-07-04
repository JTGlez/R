# Fundamentos de R: Función de sesgo

install.packages("SimDesign")

library(SimDesign)

# Estos arreglos representas mediciones del tiempo y sus predicciones 
# posteriores. Podemos verificar el sesgo entre ellos con bias()

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5 , 70, 67, 69)

# Se observa un sesgo de 0.71. El sesgo compara los datos reales con las 
# predicciones para determinar en qué porporción los resultados reales se 
# alejan de las predicciones. Idealmente, el sesgo debe tender a 0.
bias(actual_temp, predicted_temp)



