# Orignal Script 
```bash
names=("Alice" "Bob")
subjects=("Math" "Science")

for name in "${names[@]}"
do
  for subject in "${subjects[@]}"
  do
    echo "$name is studying $subject"
  done
done
```
## Behavior:
### 1. Loops through each name in names.
### 2. For each name, loops through each subject in subjects.
### 3. Prints a line like:
```bash 
Alice is studying Math
Alice is studying Science
Bob is studying Math
Bob is studying Science
```
## Key Point
### -> No user input
### -> Fixed list of names and subjects.
### -> Simple nested loops
---
## New Script
``` bash
#!/bin/bash

# Get input from user
read -p "Enter start value: " start
read -p "Enter end value: " end
read -p "Enter step value: " step

# Validate inputs
if [[ -z "$start" || -z "$end" || -z "$step" ]]; then
  echo "❌ Error: All inputs (start, end, step) are required."
  exit 1
fi

if ! [[ "$start" =~ ^[0-9]+$ && "$end" =~ ^[0-9]+$ && "$step" =~ ^[0-9]+$ ]]; then
  echo "❌ Error: Inputs must be positive integers."
  exit 1
fi

if [[ "$step" -le 0 ]]; then
  echo "❌ Error: Step must be a positive integer."
  exit 1
fi

# Arrays
names=("Alice" "Bob")
subjects=("Math" "Science")

# Loop with user-defined range
for ((i=start; i<=end; i+=step)); do
  for name in "${names[@]}"; do
    for subject in "${subjects[@]}"; do
      echo "[$i] $name is studying $subject"
    done
  done
done
```
## Behavior:
### 1. Prompts the user for start, end, and step numbers.
### 2. Validates the input: must be positive integers, step > 0.
### 3. Loops from start to end using the step increment.
### 4. For each number in the range, loops through names and subjects.
### 5. Prints a line with the index [i] like:

```bash
[1] Alice is studying Math
[1] Alice is studying Science
[1] Bob is studying Math
[1] Bob is studying Science
[2] Alice is studying Math
[2] Alice is studying Science
[2] Bob is studying Math
[2] Bob is studying Science
...
```
## Key points:
### -> Adds a numeric outer loop [i] for the range.
### -> Adds user input and validation.
### -> The output repeats the name-subject pairs for each value in the range.
---
