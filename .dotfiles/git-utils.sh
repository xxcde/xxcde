#!/usr/bin/env bash

# git-utils.sh - Git utility commands and helpers
set -e

COMMAND="${1:-help}"

show_help() {
    echo "Git Utilities for xxcde"
    echo ""
    echo "Usage: ./git-utils.sh [command]"
    echo ""
    echo "Commands:"
    echo "  status      - Show git status with detailed information"
    echo "  clean       - Show what would be cleaned (dry run)"
    echo "  branches    - List all branches"
    echo "  log         - Show recent commit history"
    echo "  help        - Show this help message"
    echo ""
}

git_status() {
    echo "=== Git Status ==="
    echo ""
    echo "Current branch: $(git branch --show-current)"
    echo ""
    git status
}

git_clean_dry_run() {
    echo "=== Files that would be cleaned ==="
    echo ""
    git clean -dn
    echo ""
    echo "To actually clean these files, run: git clean -df"
}

git_branches() {
    echo "=== Local Branches ==="
    echo ""
    git branch -vv
    echo ""
    echo "=== Remote Branches ==="
    echo ""
    git branch -r
}

git_log() {
    echo "=== Recent Commits ==="
    echo ""
    git log --oneline --graph --decorate -10
}

case "$COMMAND" in
    status)
        git_status
        ;;
    clean)
        git_clean_dry_run
        ;;
    branches)
        git_branches
        ;;
    log)
        git_log
        ;;
    help|*)
        show_help
        ;;
esac
