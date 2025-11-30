# Personal Dotfiles

Linux desktop environment configuration for i3 window manager with a minimal, dark theme. Features a carefully curated toolchain emphasizing productivity and aesthetic consistency.

## Packages

- **desktop** - i3 window manager, status bar, notifications, X11 config
- **shell** - vim, tmux, bash prompt, git config, npm config, personal environment scripts
- **ai** - AI assistant configurations (Claude Code, Codex, Gemini, OpenCode)

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
   source ~/.local/personal/activate.sh

   # Create personal environment file
   cp ~/.local/personal/env.local.sh.example ~/.local/personal/env.local.sh

   # Create personal secrets file
   cp ~/.local/personal/secrets.local.sh.example ~/.local/personal/secrets.local.sh
   ```

4. Log out and select i3 as your window manager.

## Secrets

Sensitive information such as API keys and personal secrets should be stored in `~/.local/personal/secrets.local.sh`, which is ignored by git. Use this file to set environment variables needed by your applications.

Adding Infisical secrets manager support is as simple as adding the following to your `secrets.local.sh`:

```bash
export INFISICAL_PROJECT_ID="<your-project-id>"
export INFISICAL_ENV="<your-environment>"
export INFISICAL_PATHS="<path1> <path2>" # space-separated list of secret paths
```

The secrets located in these paths will be automatically loaded into your environment when you source the `activate.sh` script.

## Directory Structure

```
dotfiles/
├── ai/                              # AI assistant configurations
│   ├── .claude/
│   │   ├── agents/                  # Custom AI agents
│   │   └── settings.json           # Claude Code global settings
│   ├── .claude-code-router/
│   │   └── config.json             # Router configuration
│   └── .config/
│       ├── ccstatusline/
│       │   └── settings.json       # Claude Code status line configuration
│       └── opencode/               # OpenCode tool configuration
│           ├── opencode.jsonc
│           ├── package.json
│           └── tool/
├── desktop/                         # Desktop environment and GUI apps
│   ├── .config/
│   │   ├── i3/
│   │   │   └── config              # Window manager
│   │   ├── dunst/
│   │   │   └── dunstrc             # Notifications
│   │   └── user-dirs.dirs          # XDG directories
│   ├── .urxvt/ext/                 # Terminal extensions
│   │   ├── clipboard
│   │   ├── keyboard-select
│   │   └── url-select
│   ├── .Xresources                  # X11 resources
│   ├── .wallpaper.png               # Desktop wallpaper
│   └── .lock.png                    # Lock screen image
├── shell/                           # Shell tools and CLI applications
│   ├── .local/
│   │   ├── personal/
│   │   │   ├── activate.sh          # Environment activation script
│   │   │   ├── env.local.sh.example # Environment template
│   │   │   ├── secrets.local.sh.example # Secrets template
│   │   │   ├── env.local.sh         # Local environment variables
│   │   │   └── secrets.local.sh     # Local secrets
│   │   └── scripts/ai/claude/
│   │       └── zai.sh               # Z.AI API configuration script
│   ├── .bash_prompt                 # Git-aware prompt
│   ├── .vimrc                       # Vim configuration
│   ├── .tmux.conf                   # Terminal multiplexer
│   ├── .npmrc                       # NPM configuration
│   └── .gitconfig                   # Git user settings (create manually)
├── .claude/                         # Local Claude Code overrides
│   └── settings.local.json
├── .gitignore                       # Git ignore rules
├── .pre-commit-config.yaml          # Pre-commit hooks
└── README.md                        # This file
```

**Deployed Structure** (after running `stow -t ${HOME} desktop shell ai`):

```
~/
├── .config/
│   ├── i3/config              # Window manager
│   ├── dunst/dunstrc          # Notifications
│   ├── user-dirs.dirs         # XDG directories
│   ├── ccstatusline/settings.json  # Claude Code status line
│   └── opencode/              # OpenCode tool configuration
├── .local/
│   ├── personal/
│   │   ├── activate.sh        # Environment activation
│   │   ├── env.local.sh       # Environment variables
│   │   └── secrets.local.sh   # API keys and secrets
│   └── scripts/ai/claude/
│       └── zai.sh             # Z.AI API configuration
├── .claude/settings.json      # Claude Code global settings
├── .urxvt/ext/                # Terminal extensions
├── .Xresources                # X11 resources
├── .vimrc                     # Vim configuration
├── .tmux.conf                 # Terminal multiplexer
├── .bash_prompt               # Git-aware prompt
├── .npmrc                     # NPM configuration
└── .gitconfig                 # Git user settings
```
