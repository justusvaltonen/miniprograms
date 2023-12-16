#!/bin/bash

# Assigning the first argument afrter calling this script to the variable: input
input="$1"

# Function to extract IPv4 addresses from input for get_ipv4() function, using grep
# Extended regex, Only the exact part instead of whole line, Digits from 0 to 9 from slot_1 to slot_3, Add a dot. Do this 3 times. Then one extra time
# Take the thing that is being compared from first function paramerer
# This is only the definition of the function. Execution comes later
get_ipv4() {
    grep -E -o -n "([0-9]{1,3}\.){3}[0-9]{1,3}" <<< "$1"
}

# Function to filter unique IPv4 addresses and sort them
# I don't know what seen does. Is it part of awk? Sorting seems a bit odd too. I have to admit this section is just a copypaste
filter_unique_ips() {
    awk '!seen[$0]++' <<< "$1" | sort -t . -k1,1n -k2,2n -k3,3n -k4,4n
}

# Remember to be very careful with spaces and indentations in bash
if [ -f "$input" ]; then
    # If input is a file
    ip_addresses=$(get_ipv4 "$(cat "$input")")
else
    # If input is a string
    ip_addresses=$(get_ipv4 "$input")
fi

# Echo needs the -e to work with variables and other extra parameters
if [ -n "$ip_addresses" ]; then
    unique_ips=$(filter_unique_ips "$ip_addresses")
    echo -e "$unique_ips"
else
    echo "No IPv4 addresses found."
fi



