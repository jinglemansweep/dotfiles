# Personal Dotfiles

Linux desktop environment configuration for i3 window manager with a minimal, dark theme.

## Packages

- **desktop** - i3 window manager, status bar, notifications, fonts, wallpapers
- **shell** - vim, tmux, bash prompt, terminal extensions
- **claude** - Claude Code workflow commands

## Installation

1. Install dependencies:
   ```bash
   sudo apt install stow i3 i3status dunst rxvt-unicode vim tmux
   ```

2. Clone and deploy:
   ```bash
   git clone <repository> ~/dotfiles
   cd ~/dotfiles
   stow -t ${HOME} desktop shell claude
   ```

3. Add to `~/.bashrc`:
   ```bash
   source ~/.bash_prompt
   ```

4. Log out and select i3 as your window manager.

## Usage

**i3 Keybindings:**
- `Mod+Return` - Terminal
- `Mod+d` - Application launcher
- `Mod+h/j/k/l` - Navigate windows
- `Mod+1-6` - Switch workspaces

## Colors

Dark theme with background `#141c21` and foreground `#93a1a1`.