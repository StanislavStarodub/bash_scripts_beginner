#!/usr/bin/env bash
echo "This is a calculater!"
read -p "Enter first value: " x
read -p "Enter second value: " y
read -p "Enter operator: + , -, *, ^, / : " operator

case "$operator" in 		
	"+") echo " $x + $y=" $(expr "$x" + "$y");;
	"-") echo " $x - $y=" $(expr "$x" - "$y");;
	"*") echo " $x * $y=" $(expr "$x" \* "$y");;
	"^") echo " $x ^ $y=" $(( "$x" ** "$y" ));;
	"/") if $operator -eq 0
		then
			echo "Deviding by zero!!!"
			exit 1
		else
			echo " $x / $y=" $(expr "$x" / "$y")
	     fi;;
	*) echo "This is not operator!"
esac
	
