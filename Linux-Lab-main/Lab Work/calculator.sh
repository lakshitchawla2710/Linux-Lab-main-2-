#!/bin/bash
echo "start"

calculator() {
    num1=$1
    num2=$2
    op=$3

    case $op in
        +) result=$((num1 + num2));;
        -) result=$((num1 - num2));;
        \*) result=$((num1 * num2));;
        /) 
            if [ $num2 -eq 0 ]; then
                echo "Error: Division by zero!"
                return
            fi
            result=$((num1 / num2));;
        *) 
            echo "Invalid operator. Use + - * /"
            return;;
    esac

    echo "Result: $result"
}

echo "Enter first number: "
read a
echo "Enter second number: "
read b
echo "Enter operator (+ - * /): "
read sign

calculator $a $b $sign

