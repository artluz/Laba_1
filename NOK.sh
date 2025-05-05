#!/bin/bash
a=$1
b=$2

nod() {
  local x=$1
  local y=$2
  while [ $y -ne 0 ]; do
    temp=$y
    y=$((x % y))
    x=$temp
  done
  echo $x
}

nod_val=$(nod $a $b)
lcm=$((a * b / non_val))

echo $lcm
