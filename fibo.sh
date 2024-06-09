#!/bin/bash

is_fibonacci() {
    candidate=$1

    if [ "$candidate" -eq 0 ]; then
        echo "0 is not a Fibonacci number."
        return 1
    fi

    fib1=0  # Start with the first Fibonacci number (0)
    fib2=1  # Second Fibonacci number (1)
    fib_index=1  # Start with index 1 for the second Fibonacci number (1)

    while [ "$fib1" -lt "$candidate" ]; do
        temp_fib=$fib1
        fib1=$fib2
        fib2=$((temp_fib + fib2))
        fib_index=$((fib_index + 1))
    done

    if [ "$fib1" -eq "$candidate" ]; then
        echo "$candidate is a Fibonacci number."
        echo "$candidate is at index $fib_index in the Fibonacci sequence."
        return 0
    else
        echo "$candidate is not a Fibonacci number."
        return 1
    fi
fiexit 1Invalid input. Please enter a positive integer."
