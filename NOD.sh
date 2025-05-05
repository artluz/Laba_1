#!/bin/bash


NOD() {
    a=$1
    b=$2
    while [ $b -ne 0 ]; do
        temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

if [ $# -ne 2 ]; then
    echo "Использование: $0 <число1> <число2>"
    exit 1
fi


if ! [[ $1 =~ ^-?[0-9]+$ ]] || ! [[ $2 =~ ^-?[0-9]+$ ]]; then
    echo "Ошибка: оба аргумента должны быть целыми числами"
    exit 1
fi


result=$(NOD $1 $2)
echo "НОД чисел $1 и $2 равен: ${result#-}"  
