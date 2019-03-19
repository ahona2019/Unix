#!/bin/bash

read x
read y

a=$x
b=$y

echo $a
echo $b


sum1=$((x + y))  
sub=$((x - y))
mul=$[ x * y ]
div=$[ x / y ]

echo -e  $sum1"\n"$sub"\n"$mul"\n"$div