# Cursor MCP Server Setup

This project uses Cursor's Model Context Protocol (MCP) servers for enhanced functionality. Follow these steps to get started:

## 1. Install Dependencies

First, install the required dependencies:

```bash
# From the project root
source .cursor/setup_deps.sh
```

This will install:
- Node.js (provides npx)
- uv (provides uvx)

## 2. Configure MCP Servers

After installing dependencies, set up your configuration:

1. Run the configuration setup script:
   ```bash
   source .cursor/setup_config.sh
   ```

2. Edit the `.env` file that was created:
   ```bash
   code .cursor/.env  # or use your preferred editor
   ```

3. Fill in your credentials:
   - GitHub personal access token
   - Atlassian (Confluence/Jira) credentials
   - Preferred timezone

4. Run the setup script again to generate your configuration:
   ```bash
   source .cursor/setup_config.sh
   ```

## Configuration Files

- `.env` - Your personal configuration (do not commit)
- `mcp.json` - Generated MCP configuration (do not commit)
- `.env.template` - Template for environment variables
- `mcp.template.json` - Template for MCP configuration

## Need Help?

If you run into any issues, please contact the team for support.