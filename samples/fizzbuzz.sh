#!/bin/bash

fizzBuzzOperation() {
    local num=$1
    local output=""

    if [ $((num % 3)) -eq 0 ]; then
        output+="Fizz"
    fi
    if [ $((num % 5)) -eq 0 ]; then
        output+="Buzz"
    fi

    echo ${output:-$num}
}

for i in {1..15}; do
    fizzBuzzOperation $i
done
