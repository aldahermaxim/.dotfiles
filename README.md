# Dotfiles

> When you live in a command line, configurations are a deeply personal thing. They are often crafted over years of experience, battles lost, lessons learned, advice followed, and ingenuity rewarded. When you are away from your own configurations, you are an orphaned refugee in unfamiliar and hostile surroundings. You feel clumsy and out of sorts. You are filled with a sense of longing to be back in a place you know. A place you built. A place where all the short-cuts have been worn bare by your own travels. A place you proudly call… $HOME.

Personal minimal Fedora setup with niri, Noctalia and greetd, managed with [mise](https://mise.jdx.dev/).

## Setup

```bash
sudo dnf copr enable jdxcode/mise
sudo dnf install mise git

git clone https://github.com/aldahermaxim/.dotfiles.git ~/.dotfiles
MISE_CONFIG_DIR=~/.dotfiles/.config/mise mise bootstrap --skip services
```

Start the login screen last. This ends the current console login:

```bash
mise bootstrap --only services
```

`MISE_CONFIG_DIR` is only needed for the first bootstrap.

## Usage

```bash
mise bootstrap --dry-run
mise bootstrap
mise dot status
mise dot add ~/.config/foo
```
