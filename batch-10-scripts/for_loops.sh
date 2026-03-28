#!/bin/bash

<<notice
this shell script demonstrates the usage of for loop in
shell scripting
notice

for car in audi bmw mg kia porche tata maruti

do 
echo $car

done

for (( i=1; i<10; i++))
do
echo $i
done

for file in ./*.txt
do
echo $file
done

