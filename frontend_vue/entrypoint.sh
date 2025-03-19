#!/bin/bash

# Initialize
if [ ! -d ".git" ]; then
    echo "Cloning repository..."
    git init
    git remote add origin https://github.com/leowu82/main-branch-frontend.git
    git pull origin main
    git checkout main
    git branch -d master

    echo "Running npm install for vue..."
    npm install
fi

npm run serve