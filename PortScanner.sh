#!/bin/bash

#Color al texto
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
green=$(tput setaf 2)
white=$(tput setaf 7)
red=$(tput setaf 1)

#Fecha y hora
dia=$(date +"%a %b %d")
hora=$(date +"%H:%M:%S")
ano=$(date +"%Y")

echo "EIPmap desarrollado por el estudiante ${green}Rafael Peiró Calvet"
echo -e "${white}Hora de ejecución: ${yellow}$dia $hora $ano\n"

#Si los argumentos no son iguales a 1 va a imprimir este mensaje por pantalla y se saldrá de la ejecución del script
if [ $# -ne 1 ]
	then
        	echo "Uso correcto: ${green}$0 [Dominio o IP a escanear]"
        exit
fi

#$1 argumento de entrada del usuario
host=$1
port_first=1
port_last=65535
array=()


ping=$(ping -c 1 $host 2>/dev/null)

#Si la ejecución del comando anterior (ping) da error, saldrá por pantalla << El dominio o IP que has introducido no ha sido encontrado >>
# y si es igual a 0 es que el comando se ha ejecutado correctamente y ejecutará el contenido del programa

if [[ $? = 0 ]]
	then
		function scan(){

		echo "${yellow}[*] ${white}Escaneo de puertos sobre ${blue}$1${white} en proceso:"

			for ((port=$port_first; port<=$port_last; port++))
				do
					#Puerto abierto
					abierto=$(timeout 1 bash -c "</dev/tcp/$host/$port" 2> /dev/null && echo "$port")
					#Si $port (que son los puertos a recorrer que va del 1 al 65535) es igual $abierto (vamos el puerto que esta abierto)
					#Entonces va a coger el $port que este abierto y lo va a guardar en el array
					if [[ $port -eq $abierto ]]
						then
							array+=($abierto)
					fi
				done
		}

		#llama a la funcion scan
		scan $1

		#Se va a visualizar por pantalla los puertos abiertos
		function visualizarpuertosabiertos(){
			for i in ${array[@]}
				do
	 				echo "${green}    [+] $i ${white} -- ${yellow}puerto abierto"
				done
		}

		#llama a la funcion visualizarpuertosabiertos
		visualizarpuertosabiertos

		#La siguiente función lo que hace es obtener el contenido del array
		function exportarchivoscsv(){
        		for i in ${array[@]}
        			do
         				echo "$host;$i;open;"
        			done
		}

		#Se crea una variable que contiene el resultado de la ejecución de la funcion anterior
		exportar=$(exportarchivoscsv)

		#Lo que hace es guardar en el fichero *.csv la información que contiene la variable $exportar
		echo -e "$exportar \n" > $host.csv

	else
		echo "${red}El dominio o IP que has introducido no ha sido encontrado"
fi

