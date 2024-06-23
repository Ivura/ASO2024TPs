#!/bin/bash

read -p "Ingrese un nombre: " NOMBRE

RESPUESTA=$(curl -s "https://api.agify.io/?name=$NOMBRE")

EDAD=$(echo "$RESPUESTA" | jq -r '.age')

echo "'$NOMBRE' tiene aproximadamente $EDAD años."