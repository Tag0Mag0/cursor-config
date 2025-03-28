#!/bin/bash

echo "Checking MCP server dependencies..."

# Check for Node.js/npx
if ! command -v node > /dev/null; then
    echo "❌ Node.js not found"
    echo "Please install Node.js from https://nodejs.org/"
    echo "This will also install npm and npx"
    exit 1
else
    NODE_VERSION=$(node -v)
    echo "✅ Node.js installed ($NODE_VERSION)"
fi

if ! command -v npx > /dev/null; then
    echo "❌ npx not found"
    echo "Please update your Node.js installation"
    exit 1
else
    NPX_VERSION=$(npx --version)
    echo "✅ npx installed ($NPX_VERSION)"
fi

# Check for uv/uvx
if ! command -v uvx > /dev/null; then
    echo "❌ uvx not found"
    echo "Installing uv package manager..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    if [ $? -eq 0 ]; then
        echo "✅ uv installed successfully"
    else
        echo "❌ Failed to install uv"
        echo "Please try installing manually:"
        echo "curl -LsSf https://astral.sh/uv/install.sh | sh"
        exit 1
    fi
else
    echo "✅ uvx already installed"
fi

echo "✨ All dependencies are installed!"
echo "You can now use Cursor's MCP servers"