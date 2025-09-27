# Obtener los argumentos de la línea de comandos
# trailingOnly = TRUE significa que sólo los argumentos después de --args son capturados
argumentos <- commandArgs(trailingOnly = TRUE)

# Imprimir los argumentos
print("Los argumentos recibidos son:")
print(argumentos)

# Puedes acceder a ellos por su posición
if (length(argumentos) > 0) {
  print(paste("El primer argumento es:", argumentos[1]))
}
