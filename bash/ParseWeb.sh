#!/usr/bin/env bash

MAGENTA="\e[35m"
BLUE="\e[94m"
GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"
BOLD="\e[1m"

if [ "$1" == "" ]
then
    echo -e "${GREEN}${BOLD}                  ParseWeb - URL TO IP SWEEPER${RESET}"
    echo
    echo "Usage: $0 URL"
    echo
    echo "Example: $0 google.com"
else
    echo
    echo -e "${GREEN}${BOLD}                  ParseWeb - URL TO IP SWEEPER${RESET}"
    echo -e "${MAGENTA}=================================================================${RESET}"
    echo
    echo -e "${GREEN}${BOLD}[+] Resolving URLs in:${RESET} ${BLUE}$1${RESET}"
    echo
    echo -e "${MAGENTA}=================================================================${RESET}"
    echo

    wget -q "$1"
    grep href index.html | cut -d "/" -f 3 | cut -d '"' -f 1 | grep "\." | grep -v "<l" > lista
    rm index.html

    sufix="_result.txt"
    filename="$1$sufix"

    for url in $(cat lista);
    do
    host "$url" | grep -v "Host" | sed 's/has.*address//';
    done > "$filename"

    echo -e "${RED}${BOLD}[+] Done: saving data to: $filename${RESET}"
    echo
    echo -e "${MAGENTA}=================================================================${RESET}"
    echo -e "${GREEN}${BOLD}                               RESULT${RESET}"
    echo -e "${MAGENTA}=================================================================${RESET}"

    rm lista
    cat -n "$filename" | column -t -s " "
    echo


fi
