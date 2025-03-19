#!/bin/bash

# Initialize
if [ ! -d ".git" ]; then
    echo "Cloning repository..."
    git init
    git remote add origin https://github.com/NYCU-SDC/main-branch-backend.git
    git pull origin main
    git checkout main
    git branch -d master

    # copy .env file for quick setup
    cp .env.example .env

    echo "Running pip install for fastapi..."
    pip install --upgrade pip
    pip install --no-cache-dir --upgrade -r ./requirements.txt
    echo "Running database migrations..."
    alembic upgrade head
fi

echo "Running server..."
uvicorn main:app --host 0.0.0.0 --port 8000 --reload