#!/bin/bash

# Colors for clean output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}===============================================${NC}"
echo -e "${BLUE}       🎯 Takeover_Hunter v1.00 🎯             ${NC}"
echo -e "${BLUE}    Automated Subdomain Takeover Scanner       ${NC}"
echo -e "${BLUE}===============================================${NC}"

if [ -z "$1" ]; then
    echo -e "${RED}[!] Usage: $0 <subdomains_list.txt>${NC}"
    exit 1
fi

subdomains_file=$1

if [ ! -f "$subdomains_file" ]; then
    echo -e "${RED}[!] Error: File $subdomains_file not found!${NC}"
    exit 1
fi

echo -e "${YELLOW}[*] Scanning started... Please wait.${NC}\n"

while read -r subdomain; do
    if [ -z "$subdomain" ]; then
        continue
    fi

    cname=$(dig +short CNAME "$subdomain")

    if [ ! -z "$cname" ]; then
        if echo "$cname" | grep -qiE "github.io|cloudfront.net|s3.amazonaws.com|wordpress.com|shopify.com|squarespace.com|heroku.com"; then
            echo -e "${RED}[💥 VULNERABLE] $subdomain ---> Points to: $cname${NC}"
            echo "$subdomain ($cname)" >> vulnerable_takeovers.txt
        else
            echo -e "${GREEN}[+] Safe:${NC} $subdomain ($cname)"
        fi
    fi
done < "$subdomains_file"

echo -e "\n${YELLOW}[*] Scan Completed!${NC}"
if [ -f "vulnerable_takeovers.txt" ]; then
    echo -e "${RED}[!] Vulnerable targets saved in: vulnerable_takeovers.txt${NC}"
else
    echo -e "${GREEN}[✓] No takeovers found. All safe!${NC}"
fi
