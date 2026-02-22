#!/bin/bash

# Deploy to Railway.app automatically
echo "🚀 Deploying to Railway.app..."

# Check if railway CLI is installed
if ! command -v railway &> /dev/null; then
    echo "Installing Railway CLI..."
    npm install -g @railway/cli
fi

# Login to Railway
railway login

# Initialize railway project
railway init

# Deploy
railway up

echo "✅ Deployment complete! Your site is live!"
