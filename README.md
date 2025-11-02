# Install MuleSoft MCP Server for Claude Code

## Steps
1. **Install MuleSoft MCP Server**
   
   Check the requirements here: https://www.npmjs.com/package/@mulesoft/mcp-server
   
   a. Create a connected app in Anypoint and add scopes as detailed on npmjs.com
      - **Save your `client-id` and `client-secret`**
   
   b. Install Mule MCP server:
      ```bash
      npm install -g @mulesoft/mcp-server
      ```

2. **Install Claude Code**
   
   Follow the installation guide: https://docs.anthropic.com/en/docs/claude-code/overview



3. **Configure Claude Code to Access Mule MCP Server**
   
   Replace `client-id` and `client-secret` in the command below and run in terminal. This will install it for use at the user level across all projects.
   
   ```bash
   claude mcp add-json mulesoft-mcp -s user '{"command":"npx","args":["-y","@mulesoft/mcp-server","start"],"env":{"ANYPOINT_CLIENT_ID":"replace_with_your_client_id","ANYPOINT_CLIENT_SECRET":"replace_with_your_client_secret","ANYPOINT_REGION":"PROD_US"}}'
   ```
   
   For different scopes available, see the documentation: https://docs.anthropic.com/en/docs/claude-code/mcp#choosing-the-right-scope


# Demo Application

Check out the **[mule-agent-demo](./mule-agent-demo/)** directory for a complete demonstration of:
- Setting up a MuleSoft application with the Mule runtime agent
- Using Claude Code with MuleSoft MCP Server to manage applications
- Sample configurations and deployment scripts
- Example use cases for health monitoring and deployments

## Quick Start with Demo

```bash
cd mule-agent-demo
# Review the README for setup instructions
cat README.md
```


# Additional Resources

Claude Code tutorial - https://www.youtube.com/watch?v=cYIxhL6pxL4&ab_channel=RobShocks
