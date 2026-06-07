# Dotfiles

> When you live in a command line, configurations are a deeply personal thing. They are often crafted over years of experience, battles lost, lessons learned, advice followed, and ingenuity rewarded. When you are away from your own configurations, you are an orphaned refugee in unfamiliar and hostile surroundings. You feel clumsy and out of sorts. You are filled with a sense of longing to be back in a place you know. A place you built. A place where all the short-cuts have been worn bare by your own travels. A place you proudly call… $HOME.

Personal configuration files for a minimal and productive Unix-based setup, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Branches

| Branch | Target | Description |
|--------|--------|-------------|
| `main` | — | Documentation only |
| `linux` | Arch / Fedora (Wayland) | Full desktop environment configs |
| `macOS` | macOS | macOS-specific configs |

## Usage

Check out the branch for your OS, then symlink everything to your home directory:

```zsh
cd ~/.dotfiles && stow --target=$HOME .
```

## What's Configured

### Common (linux + macOS)

| Tool | Purpose |
|------|---------|
| **zsh** | Shell |
| **Starship** | Prompt |
| **Ghostty** | Terminal emulator |
| **VSCode** | Editor |
| **Zed** | Editor |
| **Mise** | Runtime manager |

### Linux (Arch / Fedora + Wayland)

| Tool | Purpose |
|------|---------|
| **Niri** | Wayland compositor - tiling WM |
| **Waybar** | Top panel |
| **Fuzzel** | Application launcher |
| **Mako** | Notification daemon |
| **Swaylock** | Lock screen |
| **Fastfetch** | System info display |
| **bash** | Fallback shell |
