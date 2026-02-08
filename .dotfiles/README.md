# .dotfiles

This directory contains runnable scripts and utilities for the xxcde project.

## Available Scripts

### setup.sh
Initial setup script for the development environment.

```bash
./.dotfiles/setup.sh
```

### git-utils.sh
Git utility commands and helpers.

```bash
./.dotfiles/git-utils.sh [command]
```

Available commands:
- `status` - Show git status
- `clean` - Clean untracked files (dry run)
- `branches` - List all branches

### dev-utils.sh
Development utility commands.

```bash
./.dotfiles/dev-utils.sh [command]
```

Available commands:
- `info` - Show project information
- `tree` - Show directory tree

## Usage

All scripts are executable. You can run them directly from the repository root:

```bash
# Run setup
./.dotfiles/setup.sh

# Or add to PATH for easier access
export PATH="$PATH:$(pwd)/.dotfiles"
```
