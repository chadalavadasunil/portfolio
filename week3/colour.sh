#!/bin/bash

NC='\033[0m'

# Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
GREY='\033[0;37m'

# Bg colour
#BG_BLACK='\033[40m'
#BG_RED='\033[41m'
#BG_GREEN='\033[42m'
#BG_YELLOW='\033[43m'
#BG_BLUE='\033[44m'
#BG_MAGENTA='\033[45m'
#BG_CYAN='\033[46m'
#BG_WHITE='\033[47m'

echo -e "${RED}This text is red.${NC}"
echo -e "${GREEN}This text is green.${NC}"
echo -e "${BROWN}This text is yellow.${NC}"
echo -e "${BLUE}This text is blue.${NC}"
echo -e "${MAGENTA}This text is magenta.${NC}"
echo -e "${CYAN}This text is cyan.${NC}"
echo -e "${WHITE}This text is white.${NC}"

echo -e "${BG_RED}${WHITE}This text has a red background.${NC}"
echo -e "${BG_GREEN}${WHITE}This text has a green background.${NC}"
echo -e "${BG_YELLOW}${BLACK}This text has a yellow background.${NC}"
