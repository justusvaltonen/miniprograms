#!/bin/bash

input="$1"

# Function to extract IPv4 addresses from input using grep
get_ipv4() {
    grep -E -o "([0-9]{1,3}\.){3}[0-9]{1,3}" <<< "$1"
}

# Function to filter unique IPv4 addresses and sort them
filter_unique_ips() {
    awk '!seen[$0]++' <<< "$1" | sort -t . -k1,1n -k2,2n -k3,3n -k4,4n
}

if [ -f "$input" ]; then
    # If input is a file
    ip_addresses=$(get_ipv4 "$(cat "$input")")
else
    # If input is a string
    ip_addresses=$(get_ipv4 "$input")
fi

if [ -n "$ip_addresses" ]; then
    unique_ips=$(filter_unique_ips "$ip_addresses")
    echo -e "$unique_ips"
else
    echo "No IPv4 addresses found."
fi

