#!/usr/bin/env bash

# setup.sh - Initial setup script for xxcde development environment
set -e

echo "================================"
echo "xxcde Development Setup"
echo "================================"
echo ""

# Display system information
echo "System Information:"
echo "  - OS: $(uname -s)"
echo "  - User: $(whoami)"
echo "  - Working Directory: $(pwd)"
echo ""

# Check Git
if command -v git &> /dev/null; then
    echo "✓ Git is installed ($(git --version))"
else
    echo "✗ Git is not installed"
fi

# Check if we're in a git repository
if [ -d ".git" ]; then
    echo "✓ Repository initialized"
    echo "  - Branch: $(git branch --show-current)"
    echo "  - Remote: $(git remote get-url origin 2>/dev/null || echo 'No remote configured')"
else
    echo "✗ Not in a git repository"
fi

echo ""
echo "================================"
echo "Setup Complete!"
echo "================================"
echo ""
echo "Available utilities:"
echo "  - ./.dotfiles/git-utils.sh"
echo "  - ./.dotfiles/dev-utils.sh"
echo ""
