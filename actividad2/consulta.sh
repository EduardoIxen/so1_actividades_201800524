#!/bin/bash

echo "Ingrese el usuario de GitHub a consultar"
read GITHUB_USER

url_usr="https://api.github.com/users/${GITHUB_USER}"
get_usr=$(curl -s $url_usr)

if [ $(echo "$get_usr" | grep -c "message") -eq 1 ] 
then
	echo "Error// No se encontró al usuario ${GITHUB_USER}"
	exit 1
fi

#Si da error jq, instalarlo con sudo apt-get install jq. -r para quitarle las comillas a la respuesta.
if ! command -v jq &> /dev/null; 
then
	echo "----------------- Se necesita instalar jq -----------------"
	sudo apt-get update
	sudo apt-get install -y jq
fi

user_name=$(echo $get_usr | jq -r '.login')
id=$(echo $get_usr | jq -r '.id')
created_at=$(echo $get_usr | jq -r '.created_at')

greeting="Hola $user_name. User ID: $id. Cuenta fue creada el: $created_at."

echo $greeting

date=$(date +%Y-%m-%d)
path="/tmp/$date"
log_file="$path/saludos.log"
mkdir -p $path
echo $greeting >> $log_file

