# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository containing Linux desktop environment configurations. The setup centers around i3 window manager with a carefully curated, minimal toolchain emphasizing productivity and aesthetic consistency.

## Architecture and Structure

### Directory Organization
- `home/` - Contains dotfiles organized exactly as they appear in `$HOME`
- `packages.md` - System package dependencies for apt-based distributions
- `home/.claude/commands/` - Claude Code command definitions for workflow automation

### Home Directory Mirroring Pattern
The dotfiles use a **direct mapping approach** where configuration files in `home/` mirror their exact intended paths relative to `$HOME`:
- Traditional dotfiles: `.vimrc`, `.tmux.conf`, `.bash_prompt`
- XDG compliant configs: `.config/application/config`
- Custom extensions and scripts preserve their target locations

## Key Configuration Files

### Core Desktop Environment
- `.config/i3/config` - i3 window manager configuration with custom keybindings and color scheme
- `.config/i3status/config` - Status bar showing system metrics with color-coded segments
- `.config/dunst/dunstrc` - Notification daemon with custom positioning and urgency colors

### Terminal and Development
- `.vimrc` - Highly customized Vim (207 lines) with native autocomplete, no external plugins
- `.tmux.conf` - Terminal multiplexer with Ctrl+a prefix and custom split bindings
- `.bash_prompt` - Git-aware prompt with dynamic status coloring
- `.urxvt/ext/` - Perl extensions for enhanced terminal functionality

### Visual and Font Assets
- `.local/share/fonts/` - Contains Poppins, Space Mono, and Ionicons fonts
- `.wallpaper.png` and `.lock.png` - Desktop and lock screen images

### Claude Code Integration
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
- **File Manager**: Ranger with custom "tofu" colorscheme
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

This repository uses manual symlinking for deployment. Configuration files should be symlinked from `home/` to their corresponding locations in `$HOME`.

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