# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Important Notes

- Project uses `pre-commit`, perform `pre-commit` checks before committing.

## Repository Overview

This is a personal dotfiles repository containing Linux desktop environment configurations. The setup centers around i3 window manager with a carefully curated, minimal toolchain emphasizing productivity and aesthetic consistency.

## Architecture and Structure

### Directory Organization
- `desktop/` - Desktop environment configurations (i3, dunst, wallpapers, fonts)
- `shell/` - Terminal and shell configurations (vim, tmux, bash, git, npm, personal scripts)
- `claude/` - Claude Code command definitions for workflow automation
- `packages.md` - System package dependencies for apt-based distributions

### Stow Package Structure
The dotfiles use **GNU Stow** for modular deployment with package-based organization:
- Each directory (`desktop/`, `shell/`, `claude/`) is a Stow package
- Files within packages mirror their intended paths relative to `$HOME`
- Packages can be installed/removed independently using `stow` and `stow -D`

## Key Configuration Files

### Core Desktop Environment
- `.config/i3/config` - i3 window manager configuration with custom keybindings and color scheme
- `.config/i3status/config` - Status bar showing system metrics with color-coded segments
- `.config/dunst/dunstrc` - Notification daemon with custom positioning and urgency colors

### Terminal and Development (`shell/` package)
- `.vimrc` - Highly customized Vim (206 lines) with native autocomplete, no external plugins
- `.tmux.conf` - Terminal multiplexer with Ctrl+a prefix and custom split bindings
- `.bash_prompt` - Git-aware prompt with dynamic status coloring
- `.gitconfig` - Git user configuration and default settings
- `.npmrc` - NPM global package directory configuration
- `.local/personal/scripts/activate.sh` - Environment setup script with PATH, aliases, and secrets
- `.local/personal/secrets.sh.example` - Template for environment variables

### Visual and Font Assets (`desktop/` package)
- `.local/share/fonts/` - Contains Poppins (18 variants), Space Mono (4 variants), and Ionicons fonts
- `.wallpaper.png` and `.lock.png` - Desktop and lock screen images
- `.urxvt/ext/` - Perl extensions for enhanced terminal functionality (clipboard, keyboard-select, url-select)
- `.config/user-dirs.dirs` - XDG user directories configuration
- `.Xresources` - X11 resource configuration

### Claude Code Integration (`claude/` package)
- `.claude/commands/quick-commit.md` - Fast commit workflow without confirmation prompts
- `.claude/commands/quick-snapshot-tag.md` - Automated commit and snapshot tagging for development milestones

## Unified Design System

### Color Palette
All applications share a consistent dark theme:
- Background: `#141c21` (dark blue-gray)
- Foreground: `#93a1a1` (light gray)
- Accent colors: Red `#d12f2c`, Blue `#2587cc`, Green `#289c93`, Yellow `#b08500`, Purple `#696ebf`

### Application Ecosystem
- **Window Manager**: i3 with gaps and custom borders
- **Terminal**: rxvt-unicode (urxvt) with Perl extensions
- **File Manager**: Ranger (terminal-based)
- **Editor**: Vim with extensive native customization
- **Multiplexer**: tmux with mouse support

## Package Management

Install system dependencies with:
```bash
# Base development tools
sudo apt install build-essential curl git wget vim python3 python3-pip python3-venv

# Desktop environment
sudo apt install i3 i3-wm i3lock i3status hsetroot rxvt-unicode suckless-tools xsel brightnessctl cmus lxappearance ranger scrot
```

## Configuration Deployment

This repository uses **GNU Stow** for automated symlink management. All packages must be installed with the `-t ${HOME}` argument to ensure symlinks are created in the home directory:

```bash
# Install all packages
stow -t ${HOME} desktop shell claude

# Install specific packages
stow -t ${HOME} desktop          # Window manager, desktop environment, and fonts
stow -t ${HOME} shell            # Terminal, vim, tmux, bash, git, npm configs
stow -t ${HOME} claude           # Claude Code commands only

# Remove packages
stow -D -t ${HOME} desktop       # Remove desktop package symlinks
stow -D -t ${HOME} shell claude  # Remove multiple packages
```

### Package Contents
- **desktop**: `.config/i3/`, `.config/dunst/`, `.config/user-dirs.dirs`, wallpapers, lock screen, fonts, `.urxvt/ext/`, `.Xresources`
- **shell**: `.vimrc`, `.tmux.conf`, `.bash_prompt`, `.gitconfig`, `.npmrc`, `.local/personal/` scripts and secrets
- **claude**: `.claude/commands/` with workflow automation scripts

## Claude Code Commands

The repository includes custom Claude Code commands to streamline development workflows:

### Quick Commit (`quick-commit.md`)
- Automatically generates commit messages based on staged changes
- Uses first suggested message without user confirmation
- Follows conventional commit format for consistency
- Excludes Claude co-authorship footer for cleaner history

### Quick Snapshot Tag (`quick-snapshot-tag.md`)
- Performs quick commit followed by timestamped tag creation
- Uses format `snapshot-YYYYMMDD-HHMMSS` for easy identification
- Automatically pushes tag to origin for backup and sharing
- Ideal for marking development milestones or experimental states

## Development Philosophy

- **Minimalism**: No unnecessary plugins or external dependencies
- **Self-containment**: Most functionality implemented natively within each tool
- **Consistency**: Unified color scheme and interaction patterns across all applications
- **Efficiency**: Focus on lightweight tools optimized for keyboard-driven workflows
- **Automation**: Custom Claude Code commands for streamlined git workflows
