# Personal Dotfiles

Linux desktop environment configuration for i3 window manager with a minimal, dark theme. Features a carefully curated toolchain emphasizing productivity and aesthetic consistency.

## Packages

- **desktop** - i3 window manager, status bar, notifications, fonts, wallpapers, X11 config
- **shell** - vim, tmux, bash prompt, git config, npm config, personal environment scripts
- **ai** - AI assistant configurations (Claude Code, ccstatusline, Z.AI integration, OpenCode tools)

## Installation

1. Install system dependencies:
   ```bash
   # Base development tools
   sudo apt install build-essential curl git wget vim python3 python3-pip python3-venv

   # Desktop environment
   sudo apt install stow i3 i3-wm i3lock i3status hsetroot rxvt-unicode suckless-tools xsel brightnessctl cmus lxappearance ranger scrot dunst
   ```

2. Clone and deploy:
   ```bash
   git clone <repository> ~/dotfiles
   cd ~/dotfiles
   stow -t ${HOME} desktop shell ai
   ```

3. Set up shell environment:
   ```bash
   # Add to ~/.bashrc
   source ~/.local/personal/scripts/activate.sh

   # Create personal secrets file
   cp ~/.local/personal/secrets.sh.example ~/.local/personal/secrets.sh
   # Edit secrets.sh with your environment variables
   ```

4. Log out and select i3 as your window manager.

## Documentation

- **AGENTS.md** - Comprehensive documentation for AI coding assistants (Claude Code, OpenCode)
- **CLAUDE.md** - Reference to AGENTS.md for backward compatibility

## Features

### Development Tools
- **Vim**: 206-line custom configuration with native features
- **tmux**: Terminal multiplexer with custom prefix (Ctrl+a)
- **Git**: Pre-configured user settings and aliases
- **NPM**: Global package directory setup
- **Environment**: Automated activation script with PATH and secrets management

### AI Assistant Integration
- **Claude Code**: Fast commit workflow without confirmation, snapshot tagging, custom status line with ccstatusline
- **ccstatusline**: Customizable status bar configuration for Claude Code with model info, git context, and token tracking
- **Z.AI Integration**: Alternative API configuration script for accessing Z.AI's Claude-compatible endpoints with GLM models
- **OpenCode**: Tool configuration and database interface for enhanced development workflows

## Key Bindings

**i3 Window Manager:**
- `Mod+Return` - Terminal
- `Mod+d` - Application launcher
- `Mod+h/j/k/l` - Navigate windows
- `Mod+1-6` - Switch workspaces
- `Mod+Shift+1-6` - Move window to workspace

**Terminal Extensions:**
- Clipboard integration
- Keyboard text selection
- URL selection and opening

## Directory Structure

```
~/
├── .config/
│   ├── i3/config              # Window manager
│   ├── i3status/config        # Status bar
│   ├── dunst/dunstrc         # Notifications
│   ├── user-dirs.dirs        # XDG directories
│   ├── ccstatusline/settings.json  # Claude Code status line configuration
│   └── opencode/             # OpenCode tool configuration
├── .local/
│   ├── share/fonts/          # Poppins, Space Mono, Ionicons
│   ├── personal/
│   │   ├── scripts/activate.sh
│   │   └── secrets.sh        # Environment variables
│   └── scripts/ai/claude/zai.sh  # Z.AI API configuration script
├── .claude/settings.json    # Claude Code global settings
├── .urxvt/ext/              # Terminal extensions
├── .vimrc                   # Vim configuration
├── .tmux.conf              # Terminal multiplexer
├── .bash_prompt            # Git-aware prompt
├── .gitconfig              # Git user settings
├── .npmrc                  # NPM configuration
└── .claude/commands/       # Claude Code workflow automation
```
