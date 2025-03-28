# Cursor Configuration Template

This repository contains a template for setting up Cursor editor with MCP servers. It includes all necessary configuration templates and setup scripts, without any personal or sensitive information.

## Quick Start

1. Copy the `.cursor` directory to your home directory:
   ```bash
   cp -r .cursor ~/ 
   ```

2. Run the setup scripts:
   ```bash
   cd ~/.cursor
   ./setup_deps.sh    # Install dependencies
   ./setup_config.sh  # Create and configure your .env file
   ```

3. Edit your `.env` file with your personal credentials:
   ```bash
   code ~/.cursor/.env
   ```

4. Run the config script again to generate your final configuration:
   ```bash
   ./setup_config.sh
   ```

## What's Included

- `.cursor/`
  - `setup_deps.sh` - Script to install required dependencies
  - `setup_config.sh` - Script to set up your configuration
  - `mcp.template.json` - Template for MCP server configuration
  - `.env.template` - Template for environment variables
  - `rules/` - Cursor rules for MCP functionality
  - `.gitignore` - Prevents committing sensitive files

## Security Note

This template does not contain any sensitive information or personal credentials. You'll need to provide your own:
- GitHub personal access token
- Atlassian (Confluence/Jira) credentials
- Other personal configuration values 