# Fundamentos de R: Operadores lógicos, aritméticos y condicionales.

# Operadores aritméticos
quarter_1_sales <- 35657.98
quarter_2_sales <- 43810.55
midyear_sales <- quarter_1_sales + quarter_2_sales

year_end_sales <- midyear_sales * 2

# Operadores lógicos: se basan en las compuertas AND, OR y NOT.

# Operador AND: TRUE si X y Y son 1, FALSE en cualquier otro caso.
TRUE & TRUE

# Verificar si x se encuentra en un rango
x <- 10
x > 3 & x < 12 # True

x > 10 & x < 20 # False

# Operador OR:  FALSE si tanto X y Y son 0, TRUE en cualquier otro caso.
TRUE | TRUE
FALSE | FALSE

# Verificar si se cumple al menos una condiciòn
y <- 7
y < 8 | y > 16 # True

y < 6 | y > 9 # False

# Operador NOT: niega el valor lógico del elemento al que se aplique.
!TRUE # False


# Condicional if: se sigue la siguiente estructura
if (x == 10){
  print("X es válido!")
  
} else if (x==9) {
  print("X es medio válido!")
  
} else {
  print("X no es válido!")
  
}



