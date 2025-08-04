# Install MuleSoft MCP Server for Claude Code

## Steps

1. **Install Claude Code**
   
   Follow the installation guide: https://docs.anthropic.com/en/docs/claude-code/overview

2. **Install MuleSoft MCP Server**
   
   Check the requirements here: https://www.npmjs.com/package/@mulesoft/mcp-server
   
   a. Create a connected app in Anypoint and add scopes as detailed on npmjs.com
      - **Save your `client-id` and `client-secret`**
   
   b. Install Mule MCP server:
      ```bash
      npm install -g @mulesoft/mcp-server
      ```

3. **Configure Claude Code to Access Mule MCP Server**
   
   Replace `client-id` and `client-secret` in the command below and run in terminal. This will install it for use at the user level across all projects.
   
   ```bash
   claude mcp add-json mulesoft-mcp -s user '{"command":"npx","args":["-y","@mulesoft/mcp-server","start"],"env":{"ANYPOINT_CLIENT_ID":"**<replace-with-client-id>**","ANYPOINT_CLIENT_SECRET":"**<replace-with-client-secret>**","ANYPOINT_REGION":"PROD_US"}}'
   ```
   
   For different scopes available, see the documentation: https://docs.anthropic.com/en/docs/claude-code/mcp#choosing-the-right-scope
