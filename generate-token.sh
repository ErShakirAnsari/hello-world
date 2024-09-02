#!/bin/bash

set -e

# Define variables
APP_ID="${{ secrets.GH_APP__HELLO_WORLD_APP_ID }}"
PRIVATE_KEY="${{ secrets.GH_APP__HELLO_WORLD_PRIVATE_KEY }}"
INSTALLATION_ID=<YOUR_INSTALLATION_ID>

# Write the private key to a file
echo "${PRIVATE_KEY}" > private-key.pem

# Generate JWT using Node.js
JWT=$(node -e "
  const fs = require('fs');
  const jwt = require('jsonwebtoken');
  const privateKey = fs.readFileSync('private-key.pem', 'utf8');
  const payload = {
    iat: Math.floor(Date.now() / 1000) - 60,
    exp: Math.floor(Date.now() / 1000) + (10 * 60),
    iss: '${APP_ID}'
  };
  const token = jwt.sign(payload, privateKey, { algorithm: 'RS256' });
  console.log(token);
")

# Clean up the private key file
rm private-key.pem

# Generate installation access token
ACCESS_TOKEN=$(curl -X POST \
  -H "Authorization: Bearer ${JWT}" \
  -H "Accept: application/vnd.github+json" \
  -d '{}' \
  https://api.github.com/app/installations/${INSTALLATION_ID}/access_tokens \
  | jq -r .token)

# Output the token
echo "ACCESS_TOKEN=${ACCESS_TOKEN}" >> $GITHUB_ENV
