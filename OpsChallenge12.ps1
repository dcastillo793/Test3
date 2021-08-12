<<<<<<< HEAD
# Grab Select Text Script
# Daniel Castillo
# 10 August 2021
# Learning

# Variables
$file="C:\Users\15094\OneDrive\Desktop\CodeFellows\Class201\Lab12\OpChallenge\network_report.txt"

# Function
function select_T {
    ipconfig /all | out-file -filepath $file
    select-string -path $file -pattern ipv4 -simplematch | select-object -first 1 | writehost
    start-sleep -s 3
    remove-item $path
}

# Main
select_T

=======
# Grab Select Text Script
# Daniel Castillo
# 10 August 2021
# Learning

# Variables
$file="C:\Users\15094\OneDrive\Desktop\CodeFellows\Class201\Lab12\OpChallenge\network_report.txt"

# Function
function select_T {
    ipconfig /all | out-file -filepath $file
    select-string -path $file -pattern ipv4 -simplematch | select-object -first 1 | writehost
    start-sleep -s 3
    remove-item $path
}

# Main
select_T

>>>>>>> 2e6e7cab952faa6d47bad1d05463ffb82498df13
