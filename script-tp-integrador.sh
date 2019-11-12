#!/bin/bash

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
    read -p "ingrese cantidad de numeros " CANT
    i=2
    NUM1=1
    NUM2=1
    NUM3=1
    if [ $CANT -ge 1 ]; then
	echo $NUM1
    fi
    if [ $CANT -ge 2 ]; then
	echo $NUM2
    fi
    while [ $CANT -gt $i ]; do
        ((NUM1=$NUM2))
        ((NUM2=$NUM3))
	((NUM3=$NUM2+$NUM1))
	echo $NUM3
        ((i=$i+1))
    done
}

function invertir(){
read -p "ingrese numero a invertir " NUM
echo $NUM | rev
}

function palindromo (){
read -p "ingrese la palabra " PAL
REV=$(echo $PAL | rev)
if [ $REV == $PAL ]; then 
    echo $PAL "es palindromo" 
else
    echo $PAL "no es palindromo"
fi
}

function cantlineas(){
read -p "ingrese el path al archivo " path
echo $(wc -l < $path)
}

function ordenar(){
arr=()
    echo "ingrese 5 numeros"
    read -a arr
    echo ${arr[*]} | tr " " "\n" | sort -n | tr "\n" " "
}

function archtipo(){
    read -p "ingrese el directorio " path
echo $(ls -q -U $path | awk -F . '{print $NF}' | sort | uniq -c | awk '{print $2,$1}')
}

OPCION=0
mostrar_menu
while true; do
    read -p "Ingrese una opcion: " OPCION
    case $OPCION in
        1) fibonacci;;
	2) invertir;;
	3) palindromo;;
	4) cantlineas;;
	5) ordenar;;
	6) archtipo;;
	7) salir_saludando `whoami`
        break;;
	*)  echo "Opcion incorrecta";;

    esac
done
exit 0
