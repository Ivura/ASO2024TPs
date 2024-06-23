#!/bin/bash

numero_aleatorio=$((RANDOM % 100 + 1))

intentos=0
echo "Adivina el número entre 1 y 100"

while true; do 
	read -p "Ingrese su numero: " numero_usuario	
	((intentos++))

	if [[ $numero_usuario -eq $numero_aleatorio ]]; then
		echo "Felicitaciones!! Adivinaste el numero en $intentos intentos."
		break

	elif [[ numero_usuario -lt numero_aleatorio ]]; then
		echo "El numero es mas alto."

	else 
	echo "El numero es mas bajo"
	fi
done
