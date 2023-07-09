#!/bin/bash

bubble_sort() {
    local arr=("$@")
    local n=${#arr[@]}

    for ((i=0; i<n-1; i++)); do
        for ((j=0; j<n-i-1; j++)); do
            if (( arr[j] > arr[j+1] )); then
                temp=${arr[j]}
                arr[j]=${arr[j+1]}
                arr[j+1]=$temp
            fi
        done
    done

    echo "${arr[@]}"
}

# Example usage
numbers=(64 34 25 12 22 11 90)

echo "Original array: ${numbers[@]}"

sorted_numbers=$(bubble_sort "${numbers[@]}")

echo "Sorted array: $sorted_numbers"
