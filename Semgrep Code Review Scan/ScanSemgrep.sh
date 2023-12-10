#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

function display_blinking_box {
    text="$1"
    width=$((${#text} + 4))  # Calculate the width of the box

    # ANSI escape codes for text formatting and color
    border_color="\e[91m"  # Red color for the border
    text_color="\e[5;34m"   # Blinking blue color for the text
    reset="\e[0m"          # Reset formatting and color

    echo -e "${border_color}+$(printf -- '-%.0s' $(seq 1 $width))+${reset}"
    echo -e "${border_color}|${text_color}  $text  ${border_color}|${reset}"
    echo -e "${border_color}+$(printf -- '-%.0s' $(seq 1 $width))+${reset}"
}

echo -e "${GREEN}Welcome to the Semgrep Script!${NC}"

# Display options and descriptions
echo -e "${YELLOW}Available options:${NC} "
echo -e "${CYAN}1) Run Normal & Output in Text -> SemgrepOutput.txt${NC}"
echo -e "${CYAN}2) Run with Pro Rules & Output in Text -> SemgrepOutputPro.txt${NC}"
echo -e "${CYAN}3) Run Normal & Output in Json -> SemgrepOutput.json${NC}"
echo -e "${CYAN}4) Run with Pro Rules & Output in Json -> SemgrepOutputPro.json${NC}"
echo -e "${CYAN}5) Enter your custom option${NC}"
echo -e "${CYAN}all) Run all Semgrep options\n${NC}"

# Prompt user for input
read -p "$(echo -e "${RED}Enter the option:\n ${NC}")" option
output_folder="SemgrepOutput"
mkdir -p "$output_folder"
case $option in
    1)
        echo -e "${YELLOW}Running Semgrep option 1...${NC}"
        semgrep scan --config=auto --output SemgrepOutput.txt --force-color --text &
        ;;
    2)
        echo -e "${YELLOW}Running Semgrep option 2...${NC}"
        semgrep scan --config=auto --output SemgrepOutputPro.txt --force-color --text --pro &
        ;;
    3)
        echo -e "${YELLOW}Running Semgrep option 3...${NC}"
        semgrep scan --config=auto --output SemgrepOutput.json --force-color --json &
        ;;
    4)
        echo -e "${YELLOW}Running Semgrep option 4...${NC}"
        semgrep scan --config=auto --output SemgrepOutputPro.json --force-color --json --pro &
        ;;
    5)
        echo -e "${YELLOW}Enter your custom Semgrep option...${NC}"
        read -p "$(echo -e "${CYAN}Enter custom Semgrep command: ${NC}")" custom_command
        eval "$custom_command" &
        ;;
    all)
        echo -e "${YELLOW}Running all Semgrep options...\n${NC}"

        echo -e "${RED}Running Semgrep with normal mode with Output in Text...${NC}"
        display_blinking_box "Running Semgrep with normal mode with Output in Text.."
        semgrep scan --config=auto --output SemgrepOutput.txt --force-color --text
        wait

        echo -e "${RED}Running Semgrep with Pro rules Output in Text ...\n${NC}"
        display_blinking_box "Running Semgrep with Pro rules Output in Text ..."
        semgrep scan --config=auto --output SemgrepOutputPro.txt --force-color --text --pro
        wait

        echo -e "${RED}Running Semgrep with normal Output in Json...\n${NC}"
        display_blinking_box "Running Semgrep with normal Output in Json..."
        semgrep scan --config=auto --output SemgrepOutput.json --force-color --json
        wait

        echo -e "${RED}Running Semgrep with Pro rules Output in Json...\n${NC}"
        display_blinking_box "Running Semgrep with Pro rules Output in Json.."
        semgrep scan --config=auto --output SemgrepOutputPro.json --force-color --json --pro
        wait

        ;;
    *)
        echo -e "${RED}Invalid option. Please enter 1, 2, 3, 4, 5, or all.${NC}"
        exit 1
        ;;
esac
wait

# Additional commands to execute after all semgrep commands have finished
mv SemgrepOutputPro.json SemgrepOutput.json SemgrepOutputPro.txt SemgrepOutput.txt SemgrepOutput
echo -e "${GREEN}All Semgrep scans completed!${NC}"
