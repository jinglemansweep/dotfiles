# Personal Dotfiles

A carefully curated collection of configuration files for a minimal, productive Linux desktop environment built around **i3 window manager**. This setup prioritizes keyboard-driven workflows, aesthetic consistency, and system efficiency.

## 🎯 Overview

This dotfiles repository contains configurations for a complete desktop environment featuring:

- **i3 Window Manager** - Tiling window manager with custom keybindings and gaps
- **Minimalist Toolchain** - Carefully selected applications without bloat
- **Unified Dark Theme** - Consistent color palette across all applications
- **Terminal-Centric Workflow** - Optimized for keyboard productivity
- **Native Customizations** - Extensive configs without external plugin dependencies

## 🖥️ Desktop Environment

### Core Components

| Component | Application | Purpose |
|-----------|-------------|---------|
| **Window Manager** | i3-wm | Tiling window management with gaps |
| **Status Bar** | i3status | System information display |
| **Terminal** | rxvt-unicode (urxvt) | Lightweight terminal with Perl extensions |
| **Editor** | Vim | Heavily customized with native features |
| **File Manager** | Ranger | Terminal-based file navigation |
| **Notifications** | dunst | Customizable notification daemon |
| **Multiplexer** | tmux | Terminal session management |
| **Application Launcher** | dmenu | Minimal application launcher |

### Visual Features

- **Dark Color Scheme** - Unified `#141c21` background with `#93a1a1` foreground
- **Custom Fonts** - Poppins (UI), Space Mono (code), Ionicons (icons)
- **Consistent Theming** - Matching colors across i3, terminal, vim, and ranger
- **Clean Aesthetics** - Minimal borders, strategic use of gaps and padding

## 🚀 Quick Start

### Prerequisites

**Ubuntu/Debian-based distributions:**

```bash
# Base development tools
sudo apt install build-essential curl git wget vim python3 python3-pip python3-venv

# Desktop environment components
sudo apt install i3 i3-wm i3lock i3status hsetroot rxvt-unicode suckless-tools xsel brightnessctl cmus lxappearance ranger scrot
```

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Backup existing configurations:**
   ```bash
   # Backup important existing configs
   mv ~/.vimrc ~/.vimrc.backup 2>/dev/null || true
   mv ~/.tmux.conf ~/.tmux.conf.backup 2>/dev/null || true
   mv ~/.config/i3 ~/.config/i3.backup 2>/dev/null || true
   ```

3. **Create symlinks:**
   ```bash
   # Create necessary directories
   mkdir -p ~/.config ~/.local/share/fonts ~/.urxvt

   # Symlink configuration files
   ln -sf ~/dotfiles/home/.vimrc ~/.vimrc
   ln -sf ~/dotfiles/home/.tmux.conf ~/.tmux.conf
   ln -sf ~/dotfiles/home/.bash_prompt ~/.bash_prompt
   ln -sf ~/dotfiles/home/.config/i3 ~/.config/i3
   ln -sf ~/dotfiles/home/.config/i3status ~/.config/i3status
   ln -sf ~/dotfiles/home/.config/dunst ~/.config/dunst
   ln -sf ~/dotfiles/home/.config/ranger ~/.config/ranger
   ln -sf ~/dotfiles/home/.config/user-dirs.dirs ~/.config/user-dirs.dirs
   ln -sf ~/dotfiles/home/.urxvt ~/.urxvt
   ln -sf ~/dotfiles/home/.local/share/fonts/* ~/.local/share/fonts/
   ln -sf ~/dotfiles/home/.wallpaper.png ~/.wallpaper.png
   ln -sf ~/dotfiles/home/.lock.png ~/.lock.png
   ```

4. **Update font cache:**
   ```bash
   fc-cache -fv
   ```

5. **Source bash prompt (add to ~/.bashrc):**
   ```bash
   echo 'source ~/.bash_prompt' >> ~/.bashrc
   ```

6. **Log out and log back in** to start i3 window manager.

## ⚙️ Key Features

### i3 Window Manager
- **Mod Key:** Super (Windows key) for primary bindings, Alt for secondary
- **Custom Gaps:** 10px inner gaps for clean window separation
- **Smart Borders:** Borders only when multiple windows are present
- **Workspace Management:** 10 numbered workspaces with application-specific assignments

**Essential Keybindings:**
- `Mod+Return` - Open terminal
- `Mod+d` - Application launcher (dmenu)
- `Mod+Shift+q` - Close window
- `Mod+h/j/k/l` - Navigate windows (vim-style)
- `Mod+Shift+h/j/k/l` - Move windows

### Vim Configuration
- **207 lines** of custom configuration without external plugins
- **Native autocomplete** with `<C-n>` and `<C-p>`
- **Auto-pairing** for brackets, quotes, and parentheses
- **Custom statusline** with file info, git branch, and position
- **Smart indentation** and syntax highlighting
- **Leader key mappings** for efficient editing

### Terminal Setup
- **urxvt** with custom Perl extensions for clipboard and URL handling
- **tmux** with `Ctrl+a` prefix and intuitive split bindings
- **Git-aware bash prompt** with branch status and color coding
- **Custom color scheme** matching the overall desktop theme

### File Management
- **Ranger** file manager with custom "tofu" colorscheme
- **XDG user directories** mapped to organized `/home/louis/data/` structure
- **Consistent theming** with the rest of the desktop environment

## 🎨 Customization

### Color Palette

The entire setup uses a unified color scheme:

```
Background:  #141c21  (Dark blue-gray)
Foreground:  #93a1a1  (Light gray)
Red:         #d12f2c  (Error/urgent)
Blue:        #2587cc  (Info/links)
Green:       #289c93  (Success/active)
Yellow:      #b08500  (Warning)
Purple:      #696ebf  (Special)
```

### Modifying Configurations

- **i3 config:** Edit `home/.config/i3/config` for window manager behavior
- **Colors:** Update color variables in i3, vim, and terminal configs
- **Keybindings:** Customize in respective configuration files
- **Fonts:** Replace font files in `home/.local/share/fonts/`

### Adding New Applications

1. Install the application via package manager
2. Add configuration file to appropriate location in `home/`
3. Apply the unified color scheme
4. Create symlink during installation process

## 📁 Directory Structure

```
dotfiles/
├── home/                          # Mirror of home directory structure
│   ├── .config/
│   │   ├── i3/config             # i3 window manager
│   │   ├── i3status/config       # Status bar
│   │   ├── dunst/dunstrc         # Notifications
│   │   ├── ranger/               # File manager
│   │   └── user-dirs.dirs        # XDG directories
│   ├── .local/share/fonts/       # Custom fonts
│   ├── .urxvt/ext/               # Terminal extensions
│   ├── .vimrc                    # Vim configuration
│   ├── .tmux.conf                # tmux configuration
│   ├── .bash_prompt              # Custom shell prompt
│   ├── .wallpaper.png            # Desktop wallpaper
│   └── .lock.png                 # Lock screen image
├── packages.md                   # System dependencies
├── CLAUDE.md                     # AI assistant guidance
└── README.md                     # This file
```

## 🔧 Troubleshooting

### Common Issues

**i3 doesn't start:**
- Ensure i3 is installed: `sudo apt install i3`
- Check X11 session configuration
- Verify display manager supports i3

**Fonts not displaying correctly:**
- Run `fc-cache -fv` to refresh font cache
- Verify fonts are in `~/.local/share/fonts/`
- Restart applications using custom fonts

**Vim features not working:**
- Ensure configuration is properly symlinked
- Check vim version supports required features
- Some features require vim compiled with specific options

**Terminal colors incorrect:**
- Verify urxvt is installed and configured
- Check terminal color settings in `.Xresources` or urxvt config
- Restart terminal after configuration changes

## 🎯 Philosophy

This dotfiles setup embodies several key principles:

- **Minimalism** - Only essential tools without unnecessary features
- **Consistency** - Unified visual design and interaction patterns
- **Efficiency** - Keyboard-driven workflows optimized for productivity
- **Maintainability** - Simple configurations without complex dependencies
- **Portability** - Standard Linux tools that work across distributions

## 🤝 Contributing

This is a personal dotfiles repository, but feel free to:

- Fork and adapt configurations for your own use
- Submit issues for bugs or improvement suggestions
- Share your own optimizations and customizations

## 📄 License

This configuration is provided as-is for personal use. Feel free to use, modify, and distribute as needed.

---

**Happy hacking!** 🚀