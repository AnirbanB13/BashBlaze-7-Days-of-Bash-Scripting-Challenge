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
sum=$(num1 + num2)

# Print the result
echo "The sum of $num1 and $num2 is: $sum"

# Display the script name using $0
echo "Script Name: $0"

# Display the current process ID using $$
echo "Process ID (PID) of this script: $$"

# Display the number of arguments passed using $#
echo "Number of arguments passed: $#"

# Display the first argument (if provided) using $1
if [ $# -ge 1 ]; then
    echo "First argument: $1"
else
    echo "No arguments were provided."
fi

# Display the username of the person running the script using $USER
echo "User running the script: $USER"

# Display the current working directory using $PWD
echo "Current working directory: $PWD"

# Display the exit status of the last command using $?
echo "Exit status of the last command: $?"
