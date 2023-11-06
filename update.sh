#!/bin/bash

# Define color codes
green="\e[32m"
yellow="\e[33m"
reset="\e[0m"

# Create a colorful box for the script
echo -e "${green}"
echo "╔════════════════════════════════════════════════════╗"
echo "║    Migrating your work to Cloud                        ║"
echo "╚════════════════════════════════════════════════════╝"
echo -e "${reset}"

# Add changes to the staging area
git add .

# Check the status of the repository
git status

# Commit the changes with a descriptive message
commit_message="Update message"
git commit -m "$commit_message"

# Push the changes to the remote repository
git push

# Display a completion message in a colorful box
echo -e "${green}"
echo "╔════════════════════════════════════════════════════╗"
echo "║    Your work Saved to Remote Location               ║"
echo "╚════════════════════════════════════════════════════╝"
echo -e "${reset}"
