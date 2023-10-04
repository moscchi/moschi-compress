#!/bin/bash

# Obtener el tipo (be o fe) y el código (xxxx)
read -p "Tipo (be/fe): " tipo
read -p "Código (xxxx): " codigo

# Obtener la fecha actual en el formato YYMMDD
fecha=$(date +%y%m%d)

# Obtener el timestamp actual
timestamp=$(date +%s)

# Nombre del archivo zip
archivo="talent-$tipo-$codigo-$fecha_$timestamp.zip"

# Comprimir
zip -r "$archivo" .

echo "Archivo comprimido como $archivo"
