#!/bin/bash


echo "Введите первое число:"
read num1
echo "Введите второе число:"
read num2

echo "НОД:"
./NOD.sh $num1 $num2
echo "НОК:"
./NOK.sh $num1 $num2


if [ ! -f NOD.sh ] || [ ! -f NOK.sh ]; then
    echo "Ошибка: скрипты NOD.sh и NOK.sh должны находиться в той же директории"
    exit 1
fi


read -p "Введите первое число: " num1
read -p "Введите второе число: " num2


if ! [[ $num1 =~ ^-?[0-9]+$ ]] || ! [[ $num2 =~ ^-?[0-9]+$ ]]; then
    echo "Ошибка: необходимо ввести целые числа"
    exit 1
fi


echo "Вычисляем НОД..."
NOD_result=$(./NOD.sh $num1 $num2)
echo "$NOD_result"


echo "Вычисляем НОК..."
NOK_result=$(./NOK.sh $num1 $num2)
echo "$NOK_result"

