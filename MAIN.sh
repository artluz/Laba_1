#!/bin/bash

echo "Введите первое число:"
read num1
echo "Введите второе число:"
read num2

echo "НОД:"
./NOD.sh $num1 $num2
echo "НОК:"
./NOK.sh $num1 $num2
