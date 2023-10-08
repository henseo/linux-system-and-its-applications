#!/bin/sh

if [ "$#" -ne 2 ]; then
  echo "Invalid input"
  exit 1
fi

rows="$1"
columns="$2"

if [ "$rows" -lt 1 ] || [ "$columns" -lt 1 ]; then
  echo "Input must be greater than 0"
  exit 1
fi

for i in $(seq "$rows"); do
  for j in $(seq "$columns"); do
    result=$((i * j))
    printf "%d*%d=%-4d" $i $j $result
  done
  echo ""
done

exit 0
