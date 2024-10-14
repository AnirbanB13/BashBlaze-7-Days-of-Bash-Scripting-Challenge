#!/bin/bash

# Task 1: Adding '#' at the begining of your code line, disables the line and won't be the part of the executable. Also used to pass essential information.

# Task 2: 'Echo' is used to display the message on the terminal.

echo "This is my 1st day of bash scripting blaze challenge!" 

# Task 3: 'Variables' are used to store data/values.

Variable1="Hello"
Variable2="World"

echo "$Variable1 $Variable2"

# Task 4: bash script that takes two variables (numbers) as input and prints their sum using those variables.

#!/bin/bash

# Prompt the user for two numbers
echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

# Calculate the sum
sum=$((num1 + num2))

# Print the result
echo "The sum of $num1 and $num2 is: $sum"

# Task 5: Bash provides such built-in variables which shows different types of information, a few are:

echo "The name of the script: " $0
echo "The process ID (PID) of the script itself : " $$
echo "The number of arguments passed to the script: " $#
echo "The first argument passed to the script." $1
echo "The username of the person running the script: " $USER
echo "The current working directory: " $PWD
echo "The exit status of the last executed command" $?

echo "All files end with .txt extension: "
ls *.txt
