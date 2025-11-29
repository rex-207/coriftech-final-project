#!/bin/bash

read -p "Enter a password: " password
echo


if [[ ${#password} -lt 8 ]]; then
    echo "Password too short. Must be at least 8 characters."
    exit 1
fi

score=0


if [[ $password =~ [a-z] ]]; then
    ((score++))
fi


if [[ $password =~ [A-Z] ]]; then
    ((score++))
fi


if [[ $password =~ [0-9] ]]; then
    ((score++))
fi

if [[ $password = "password" ]]; then
       echo "your joking..."
fi       

if [[ $password =~ [^a-zA-Z0-9] ]]; then
    ((score++))
fi

case $score in
    4) echo "Strength: Very Strong" ;;
    3) echo "Strength: Strong" ;;
    2) echo "Strength: Medium" ;;
    1) echo "Strength: Weak" ;;
    0) echo "Strength: Very Weak" ;;
esac

