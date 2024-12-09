#!/bin/zsh


GREEN='\e[32m'
RED='\e[31m'
YELLOW='\e[33m'
CYAN='\e[36m'
RESET='\e[0m'

echo -n "${GREEN}[+] Target Directory -> ${RESET}"
read file

echo -n "${GREEN}[+] Target URL -> ${RESET}"
read url

if [[ -z $file ]]; then
  echo -e "\n${RED}[-] No directory specified. Please enter a valid path.${RESET}"
  exit 1
elif [[ ! -f $file ]]; then
    echo -e "\n${RED}[-] File not found in the specified directory: ${CYAN}$file${RESET}"
    exit 1
fi

if [[ -z $url ]]; then
  echo -e "\n${RED}[-] No URL specified. Please enter a valid URL.${RESET}"
  exit 1
fi

domain=$(echo $url | sed 's|^[a-zA-Z]*://||')

echo -e "\n${YELLOW}[+] Displaying login and password for domain '${CYAN}$domain${YELLOW}':${RESET}"
echo -e "\n${CYAN}Credentials Found:${RESET}"

grep  -E "://$domain" $file | sed 's|^[^:]*://||' | cut -d':' -f2- | tr -s '[:space:]' | while read cred; do
    if [[ $cred =~ [^[:space:]]+:[^[:space:]]+ ]]; then
      echo $cred | awk -F" " '{print $NF}'
    fi
done

echo -e "\n${YELLOW}[+] End of Results.${RESET}"
