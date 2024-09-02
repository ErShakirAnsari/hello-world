#!/bin/bash

# Define variables
APP_ID=$1
PRIVATE_KEY=$2
INSTALLATION_ID=$3

# Create a temporary file to store the private key
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

# Clean up the temporary file
rm private-key.pem

# Use the JWT to get an installation access token
ACCESS_TOKEN=$(curl -X POST \
  -H "Authorization: Bearer ${JWT}" \
  -H "Accept: application/vnd.github+json" \
  -d '{}' \
  https://api.github.com/app/installations/${INSTALLATION_ID}/access_tokens \
  | jq -r .token)

# Check if the access token was retrieved successfully
if [ -z "$ACCESS_TOKEN" ]; then
  echo "Failed to generate access token"
  exit 1
fi

# Output the token as an environment variable
echo "ACCESS_TOKEN=${ACCESS_TOKEN}" >> $GITHUB_ENV
