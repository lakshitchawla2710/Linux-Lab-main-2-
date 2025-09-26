#!/bin/bash


is_palindrome() {
    num=$1
    rev=0
    temp=$num

    while [ $num -gt 0 ]
    do
        rem=$((num % 10))
        rev=$((rev * 10 + rem))
        num=$((num / 10))
    done

    if [ $temp -eq $rev ]; then
        echo "$temp is a palindrome"
    else
        echo "$temp is not a palindrome"
    fi
}

