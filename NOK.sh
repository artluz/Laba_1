#!/bin/bash
a=$1
b=$2

gcd() {
  local x=$1
  local y=$2
  while [ $y -ne 0 ]; do
    temp=$y
    y=$((x % y))
    x=$temp
  done
  echo $x
}

gcd_val=$(gcd $a $b)
lcm=$((a * b / gcd_val))

echo $lcm
