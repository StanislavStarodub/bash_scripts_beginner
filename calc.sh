#!/usr/bin/env bash
while true
do
echo "This is a calculater!"
read -p "Enter operator: + , -, *, ^, /, sqrt  or 'exit' " operator
if [ "$operator" == "exit" ]
then
	break
fi
read -p "Enter first value: " x
read -p "Enter second value, if it sqrt, press zero: " y

# Functions 
sum() {
echo "$1+$2" | bc 
}

subtraction() {
echo "$1-$2" | bc
}

multiplication() {
echo "$1*$2" | bc
}

exponentiation() {
echo "$1^$2" | bc
}

division() {
echo "$1/$2" | bc -l
}


sqrt() {
	echo sqrt "($1)" | bc -l

}

case "$operator" in 		
	"+") echo " $x + $y = " $( sum $x $y );;
	"-") echo " $x - $y = " $(subtraction $x $y);;
	"*") echo " $x * $y = " $(multiplication $x $y);;
	"^") echo " $x ^ $y = " $(exponentiation $x $y);;
	"/") if $operator -eq 0
		then
			echo "Deviding by zero!!!"
			exit 1
		else
			echo " $x / $y=" $(division $x $y)
	     fi;;
	"sqrt") echo " sqrt(x)=" `sqrt $x`;;
	*) echo "This is not operator!"
esac
done	
