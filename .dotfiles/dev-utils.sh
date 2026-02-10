#!/usr/bin/env bash

# dev-utils.sh - Development utility commands
set -e

COMMAND="${1:-help}"

show_help() {
    echo "Development Utilities for xxcde"
    echo ""
    echo "Usage: ./dev-utils.sh [command]"
    echo ""
    echo "Commands:"
    echo "  info        - Show project information"
    echo "  tree        - Show directory structure"
    echo "  env         - Show environment variables"
    echo "  help        - Show this help message"
    echo ""
}

show_info() {
    echo "=== Project Information ==="
    echo ""
    echo "Project: xxcde"
    echo "Location: $(pwd)"
    echo ""
    
    if [ -f "README.md" ]; then
        echo "=== README.md ==="
        cat README.md
        echo ""
    fi
    
    if [ -f "LICENSE" ]; then
        echo "License: $(head -n 1 LICENSE 2>/dev/null || echo 'Unknown')"
    fi
}

show_tree() {
    echo "=== Directory Structure ==="
    echo ""
    
    # Use tree if available, otherwise use find
    if command -v tree &> /dev/null; then
        tree -L 2 -a -I '.git'
    else
        find . -maxdepth 2 -not -path '*/\.git/*' -not -path '*/\.git' | sort
    fi
}

show_env() {
    echo "=== Environment Variables ==="
    echo ""
    echo "Shell: $SHELL"
    echo "PATH: $PATH"
    echo "HOME: $HOME"
    echo "USER: $USER"
    echo "PWD: $PWD"
}

case "$COMMAND" in
    info)
        show_info
        ;;
    tree)
        show_tree
        ;;
    env)
        show_env
        ;;
    help|*)
        show_help
        ;;
esac
