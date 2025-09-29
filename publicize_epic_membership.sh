#!/bin/bash

# ==============================================================================
# SCRIPT TO PUBLICIZE YOUR EPIC GAMES ORGANIZATION MEMBERSHIP ON GITHUB
# ==============================================================================
#
# Instructions:
# 1. Fill in the two variables below with your token and username.
# 2. Save the file.
# 3. Open a terminal and run: bash publicize_epic_membership.sh
#

# --- FILL IN YOUR INFO HERE ---
TOKEN="YOUR_TOKEN_HERE" # Paste your token generated with the 'write:org' scope
USERNAME="YOUR_USERNAME_HERE" # Paste your GitHub username
# --------------------------------

# Verification to ensure the variables are filled
if [[ "$TOKEN" == "YOUR_TOKEN_HERE" ]] || [[ "$USERNAME" == "YOUR_USERNAME_HERE" ]]; then
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  echo "!!! ERROR: Please edit this script and fill in the         !!!"
  echo "!!! TOKEN and USERNAME variables before running.           !!!"
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  exit 1
fi

echo "-> Sending request to the GitHub API to publicize your EpicGames membership..."
echo "-> Target User: $USERNAME"
echo ""

# The cURL command that works the magic
curl -L \
  -X PUT \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/orgs/EpicGames/public_members/$USERNAME

echo ""
echo ""
echo "-> Process finished."
echo "-> If you see no error messages above and the status is '204', check your GitHub profile!"
echo "-> REMEMBER TO DELETE YOUR TOKEN NOW FOR SECURITY."
