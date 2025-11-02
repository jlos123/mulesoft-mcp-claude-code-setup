#!/bin/bash

# Mule Application Deployment Script
# This script demonstrates how to deploy a Mule application to CloudHub or Hybrid runtime

set -e

echo "================================"
echo "Mule Application Deployment"
echo "================================"
echo ""

# Configuration
APP_NAME="${1:-demo-mule-app}"
ENVIRONMENT="${2:-Sandbox}"
MULE_VERSION="${3:-4.4.0}"

echo "Application Name: $APP_NAME"
echo "Environment: $ENVIRONMENT"
echo "Mule Version: $MULE_VERSION"
echo ""

# Check if anypoint-cli is installed
if ! command -v anypoint-cli &> /dev/null; then
    echo "Error: anypoint-cli is not installed"
    echo "Install it with: npm install -g anypoint-cli"
    exit 1
fi

# Check if application package exists
if [ ! -f "target/${APP_NAME}.jar" ]; then
    echo "Error: Application package not found at target/${APP_NAME}.jar"
    echo "Please build your application first using 'mvn clean package'"
    exit 1
fi

# Login to Anypoint Platform (credentials should be in environment variables)
echo "Logging in to Anypoint Platform..."
if [ -z "$ANYPOINT_USERNAME" ] || [ -z "$ANYPOINT_PASSWORD" ]; then
    echo "Error: ANYPOINT_USERNAME and ANYPOINT_PASSWORD environment variables must be set"
    exit 1
fi

# Deploy application
echo "Deploying application..."
anypoint-cli runtime-mgr cloudhub-application deploy \
    --name "$APP_NAME" \
    --target "CloudHub" \
    --runtime "$MULE_VERSION" \
    --workers 1 \
    --workerSize 0.1 \
    --region us-east-1 \
    "target/${APP_NAME}.jar"

echo ""
echo "Deployment initiated successfully!"
echo "Check status with: anypoint-cli runtime-mgr cloudhub-application describe $APP_NAME"
echo ""
echo "Or use Claude Code with MuleSoft MCP Server:"
echo "  'What is the status of $APP_NAME?'"
