#!/bin/bash

# Get latest commit hash
HASH=$(git rev-parse --short HEAD)

# Update _config.yml with latest hash
sed -i "s/^commit_hash: .*/commit_hash: $HASH/" _config.yml

echo "Updated _config.yml with commit hash: $HASH"