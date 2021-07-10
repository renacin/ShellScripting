#!/bin/bash

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

read -p "Username: " username
read -s -p "Password: " password
echo


echo
echo "Hello $username, here are the contents of your directory"
dir_contents=$(ls)
echo "Items In Dir: $dir_contents"


