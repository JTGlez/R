# Fundamentos de R: Transformación de datos

# Para iniciar, creamos un nuevo dataframe de nombres.

id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", 
          "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", 
          "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", 
               "Developer", "Programmer", "Management", "Clerical", 
               "Developer", "Programmer")

employee = data.frame(id, name, job_title)
employee

# A continuación se muestran funciones de transformación de datos.Una de ellas
# es separate(), que permite dividir datos en columnas separadas. En este 
# ejemplo, se toman los nombres de los empleados y se crean 2 columnas nuevas
# para su nombre y apellido
employee <- separate(employee, name, into = c('first_name', 'last_name', sep = ' '))

# La función inversa es unite(), la cual permite unir columnas entre sí.
employee <- unite(employee, 'name', first_name, last_name, sep = ' ')
employee

# Mutate también puede usarse para añadir columnas con cálculos. En este ejemplo, 
# usamos mutate para añadir una columna adicional con el peso en kg de los
# pinguinos y con el tamaño de los picos en metros.

View(penguins)
penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000, 
         flipper_length_m = flipper_length_mm/1000)