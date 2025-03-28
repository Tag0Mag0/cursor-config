#!/bin/bash

CURSOR_DIR="$HOME/.cursor"
ENV_FILE="$CURSOR_DIR/.env"
MCP_FILE="$CURSOR_DIR/mcp.json"

# Check if .env file exists, if not create it from template
if [ ! -f "$ENV_FILE" ]; then
    echo "Creating new .env file..."
    cp "$CURSOR_DIR/.env.template" "$ENV_FILE"
    
    # Set HOME variable automatically
    sed -i '' "s|^HOME=.*|HOME=$HOME|" "$ENV_FILE"
    
    echo "Please edit $ENV_FILE to set your configuration values"
    echo "You'll need:"
    echo "- GitHub personal access token"
    echo "- Atlassian (Confluence/Jira) credentials"
    echo "- Preferred timezone"
    exit 1
fi

# Generate mcp.json from template using environment variables
echo "Generating MCP configuration..."
envsubst < "$CURSOR_DIR/mcp.template.json" > "$MCP_FILE"

echo "✨ Configuration complete!"
echo "Your MCP configuration has been set up at: $MCP_FILE"