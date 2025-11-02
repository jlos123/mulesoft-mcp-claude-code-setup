# Mule Agent Demo

This is a demonstration repository for using the MuleSoft MCP Server with Claude Code to interact with MuleSoft applications and the Anypoint Platform.

## Overview

This demo showcases how to:
- Set up a MuleSoft application with the Mule runtime agent
- Use Claude Code with MuleSoft MCP Server to manage and monitor applications
- Interact with Anypoint Platform through Claude Code
- Deploy and manage Mule applications programmatically

## Prerequisites

Before running this demo, ensure you have:

1. **MuleSoft MCP Server installed** - Follow the parent repository's setup guide
2. **Claude Code installed and configured** - See https://docs.anthropic.com/en/docs/claude-code/overview
3. **Anypoint Platform account** with appropriate permissions
4. **Mule Runtime** installed (if running locally)

## Project Structure

```
mule-agent-demo/
├── README.md                 # This file
├── src/                      # Source code for Mule applications
│   └── main/
│       ├── mule/            # Mule configuration files
│       └── resources/       # Application resources
├── config/                   # Configuration files
│   ├── mule-agent.yml       # Mule agent configuration
│   └── anypoint-config.json # Anypoint platform configuration
├── scripts/                  # Helper scripts
│   ├── deploy.sh            # Deployment script
│   └── monitor.sh           # Monitoring script
└── examples/                 # Example use cases
    ├── health-check.md      # Health check examples
    └── deployment.md        # Deployment examples
```

## Getting Started

### 1. Configure Mule Agent

The Mule agent allows your Mule runtime to communicate with Anypoint Platform. Configuration is in `config/mule-agent.yml`.

### 2. Set Up Anypoint Platform Connection

Update `config/anypoint-config.json` with your Anypoint Platform credentials:
- Client ID
- Client Secret
- Organization ID
- Environment ID

### 3. Deploy a Sample Application

Use the deployment script:
```bash
./scripts/deploy.sh
```

### 4. Use Claude Code to Interact

Once set up, you can use Claude Code to:
- Query application status
- View logs and metrics
- Deploy new versions
- Manage configurations
- Troubleshoot issues

## Example Claude Code Commands

With the MuleSoft MCP Server configured, you can ask Claude Code:

- "What is the health status of my Mule applications?"
- "Show me the logs for the last deployment"
- "Deploy the latest version of my application"
- "What are the current environment properties?"
- "Check the API analytics for the past 24 hours"

## Demo Scenarios

### Scenario 1: Application Health Monitoring
Use Claude Code to check the health of all deployed applications and identify any issues.

### Scenario 2: Automated Deployment
Deploy a new version of your application using natural language commands.

### Scenario 3: Log Analysis
Ask Claude Code to analyze recent logs and identify errors or warnings.

### Scenario 4: Configuration Management
Update environment-specific configurations across multiple environments.

## Troubleshooting

### Common Issues

1. **Connection to Anypoint Platform fails**
   - Verify your client ID and secret are correct
   - Check that the connected app has the required scopes

2. **Mule agent not responding**
   - Ensure the Mule runtime is running
   - Check the agent configuration file
   - Verify network connectivity

3. **MCP Server not found by Claude Code**
   - Confirm the MCP server is installed globally
   - Check the Claude Code configuration
   - Try restarting Claude Code

## Additional Resources

- [MuleSoft Documentation](https://docs.mulesoft.com/)
- [Anypoint Platform](https://anypoint.mulesoft.com/)
- [MuleSoft MCP Server on npm](https://www.npmjs.com/package/@mulesoft/mcp-server)
- [Claude Code Documentation](https://docs.anthropic.com/en/docs/claude-code/overview)

## Contributing

Feel free to submit issues or pull requests to improve this demo.

## License

This demo is provided as-is for educational purposes.
