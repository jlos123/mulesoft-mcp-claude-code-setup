#!/bin/bash

# Mule Application Monitoring Script
# This script demonstrates basic monitoring capabilities for Mule applications

set -e

echo "================================"
echo "Mule Application Monitor"
echo "================================"
echo ""

APP_NAME="${1:-demo-mule-app}"

echo "Monitoring application: $APP_NAME"
echo ""

# Check if anypoint-cli is installed
if ! command -v anypoint-cli &> /dev/null; then
    echo "Error: anypoint-cli is not installed"
    echo "Install it with: npm install -g anypoint-cli"
    exit 1
fi

# Get application status
echo "Application Status:"
echo "-------------------"
anypoint-cli runtime-mgr cloudhub-application describe "$APP_NAME" --output json | jq '{
  name: .name,
  status: .status,
  workers: .workers,
  muleVersion: .muleVersion.version,
  lastUpdateTime: .lastUpdateTime
}'

echo ""
echo "Recent Logs:"
echo "------------"
anypoint-cli runtime-mgr cloudhub-application tail-logs "$APP_NAME" --limit 10

echo ""
echo "Tip: Use Claude Code with MuleSoft MCP Server for natural language queries:"
echo "  'Show me the health status of $APP_NAME'"
echo "  'What errors occurred in the last hour?'"
echo "  'Analyze the performance metrics'"
