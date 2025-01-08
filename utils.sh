#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

add_line_if_not_exists() { 
	local line="$1"
	local file="$2"
	grep -qxF "$line" "$file" || echo "$line" | sudo tee -a "$file" 
}

print_line() {
	local line="$1" i
	echo -e "\n\n${RED}>>>${NC} ${GREEN}$line${NC}\n"
 }
