#!/bin/bash
# everything in shell is considerd as string
NUMBER1=100
NUMBER2=200
NUMBER3=devops

echo "SUM=$(($NUMBER1+$NUMBER2+$NUMBER3))"


# Size = 4, Max index = 3

LEADERS=("Modi" "Putin" "Trudo" "Trump")

echo "all leaders: ${LEADERS[@]}"
echo "first leaders: ${LEADERS[0]}"

echo "last leaders: ${LEADERS[10]}"