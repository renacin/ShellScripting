# Date: 06/09/2021
# Title: Learning Bash Scripting #1 - The Basics




# ----------------PRINTING, USER INPUT---------------------
# echo is similar to print in Python, read similar to input
# Refer to variables with the $ symbol
# ---------------------------------------------------------

# echo "What is your name?"
# read user_name
# echo "Hello, $user_name"



# -------------PRINTING, USER INPUT, VARIABLES-------------
# Ask the user for a username & password
# Prefix variables with $ when reading or printing
# Leave off $ when setting a variable name with a value
# No need for quotation marks when setting string variables
# Variables are untyped, no need to define them
# ---------------------------------------------------------

echo "Algorithm 3000 Application"

echo "Please Enter Username"
read username
echo "Please Enter Password"
read password

echo "Username: $username, Password: $password"



