#!/bin/sh

# Date: 06/09/2021
# Title: Learning Bash Scripting #1 - The Basics


# ----------------PRINTING, USER INPUT---------------------
# echo is similar to print in Python, read similar to input
# Refer to variables with the $ symbol
# ---------------------------------------------------------

: <<'COMMENTS'

echo "What is your name?"
read user_name
echo "Hello, $user_name"

COMMENTS



# -------------PRINTING, USER INPUT, VARIABLES-------------
# Ask the user for a username & password
# Prefix variables with $ when reading or printing
# Leave off $ when setting a variable name with a value

# No need for quotation marks when setting string variables
# Variables are untyped, no need to define them

# Two types of bash variables, system def & user def
# Examples:
#       + Bash - Version Of Bash
#       + COLUMNS - Columns In Shell Window
#       + HOME - Home Directory Of Computer
#       + LOGNAME - Logging Current Username
#       + OSTYPE - Current Operating System Type
#       + PWD - Workign Directory
#       + USERNAME - Current USERNAME
#       + DATE - Current Date Information
# ---------------------------------------------------------

: <<'COMMENTS'

echo "Algorithm 3000 Application"
echo "Please Enter Username"
read username
echo "Please Enter Password"
read password
echo "Username: $username, Password: $password"

echo "It is currently: $(date)"
echo "Username: $USERNAME"
echo "HOME_DIR: $HOME, WORKING_DIR: $PWD"
echo "CUR_OS: $OSTYPE"

COMMENTS



# -------------TAKING ARGs FROM COMMAND LINE---------------
# With the filename, a bash script can take add args
# Examples:
#       + $0 - Filename
#       + $1-$9 - Add Args
#       + $# - Number Of Add Arg
#       + $@ - Add Args As An Array
# ---------------------------------------------------------

: <<'COMMENTS'

file_name="$0"
args="$@"
num_args="$#"
echo "Filename: $file_name | # Of Add Args: $num_args | Add Args: [$args]"

COMMENTS



# -------------Information From Other Commands-------------
# You can create a variable with information from another
# command.
# Example:
#       + $(ls) - Stores the information of ls inside a var

# Notes:
#       + read -p "" var  --> gives prompt, sets var
#       + read -sp "" var --> gives prompt, silent var
# ---------------------------------------------------------

: <<'COMMENTS'

read -p "Username: " username
read -s -p "Password: " password
echo

echo
echo "Hello $username, here are the contents of your directory"
dir_contents=$(ls)
echo "Items In Dir: $dir_contents"

COMMENTS



# ----------------------SLEEP------------------------------
# Using the sleep unction you can pause the script
# Examples:
#       + sleep number prefix
#       + sleep 5m
#       + sleep 1h 30m 30s
# ---------------------------------------------------------

: << 'COMMENTS'

echo "Im going to do some calculations"
sleep 5s
echo "All done!"

COMMENTS



# ----------------------BASIC ARITHMATIC-------------------
# Must be done within two sets of parentheses
# General format: sum=$((10+2))
# Operators:
#       + All that you know and more
# ---------------------------------------------------------

: << 'COMMENTS'

echo "Welcome to the addition calculator"
read -p "First Number: " first_number
read -p "Second Number: " second_number

result=$(($first_number + $second_number))
echo "$result"

COMMENTS



# --------------CONTROL FLOW STATEMENTS--------------------
# Like any other program Bash allows you to add some control
# logic to your program. Like other languages you can use
# if, elif, and else statements.
# Notes:
#       + Unlike most languages Bash needs a finish statement
#           to indiacte the end of the control flow structure
#       + Be mindful of spaces within condition statements!
#       + You can shain conditions together with &&, || and
#           other statements
# ---------------------------------------------------------

: << 'COMMENTS'

echo "Sign In To Database"
read -p "Username: " username
read -p "Password: " password
echo

if [[ $username == "Renacin" || $username == "Ren" || $username == "ren" ]] && [[ $password == "Matadeen" || $password == "mat" ]]; then
    echo "Welcome Renacin!"
else
    echo "Unknown Login!"
fi

COMMENTS



# ---------------MORE CONTROL FLOW STATEMENTS--------------
# Basic If, Elif, and Else statements are useful, however
# in situtations where entries are highly variable math-case
# are more efficient, as well as much more readable
# Follows this format:
# case $User_Input in
#   Renacin|Ren|renacin|ren)
#       echo "Hey Renacin!"
#       ;;
#   *)
#       echo "You aren't Ren!"
#       ;;
# esac
# ---------------------------------------------------------

echo "Enter Credentials Below"
read -p "Username: " username

case $username in
    Renacin|renacin|Ren|ren)
        echo "Welcome Back Ren!"
        echo "Performing A Network Test Before We Continue"
        echo
        ping -c 10 -q www.renacin.com
        ;;
    *)
        echo "Warning Unknown User: $username"
        ;;
esac







