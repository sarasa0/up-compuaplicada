#!bin/bash

#Pedir un numero entero y mostrar esa cantidad de elementos de la sucesion de Fibonacci.
#Pedir un numero entero y mostrar por pantalla ese numero en forma invertida.
#Pedir una cadena de caracteres y evaluar si es palindromo o no.
#Pedir el path a un archivo de texto y mostrar por pantalla la cantidad de lineas que tiene.
#Pedir el ingreso de 5 numeros enteros y mostrarlos por pantalla en forma ordenada.
#Pedir el path a un directorio y mostrar por pantalla cuantos archivos de cada tipo contiene.
#Salir (Saludando al usuario que ejecuto el programa).


function mostrar_menu(){
    clear
    echo "1) Fibonacci"
    echo "2) Invertir Numero"
    echo "3) Palindromo"
    echo "4) Cantidad de lineas de un archivo"
	echo "5) ordenar numeros"
	echo "6) archivos por tipo de un directorio"
    echo "7) Salir saludando"
    echo "-------------------------------------------------------------"
}

function salir_saludando(){
    NOMBRE=$1
    echo "Chau $NOMBRE"
    sleep 2
}

function fibonacci(){
	read -p "ingrese cantidad de numeros" CANT
	i=0
	NUM1=1
	NUM2=1
	while [$CANT -gt $i] do
		echo $NUM2
		NUM1=$NUM2
		((NUM2=NUM2+NUM1))
		((i=i+1))
	done
}

OPCION=0
mostrar_menu
while true; do
    read -p "Ingrese una opcion: " OPCION
    case $OPCION in
        1)  fibonacci;;
			break;;
		2)	
			break;;
		3)
			break;;
		4)
			break;;
		5)
			break;;
		6)
			break;;
		7) salir_saludando `whoami`
            break;;
		*)  echo "Opcion incorrecta";;

    esac
done
exit 0
