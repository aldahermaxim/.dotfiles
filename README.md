# Dotfiles

> When you live in a command line, configurations are a deeply personal thing. They are often crafted over years of experience, battles lost, lessons learned, advice followed, and ingenuity rewarded. When you are away from your own configurations, you are an orphaned refugee in unfamiliar and hostile surroundings. You feel clumsy and out of sorts. You are filled with a sense of longing to be back in a place you know. A place you built. A place where all the short-cuts have been worn bare by your own travels. A place you proudly call… $HOME.

Personal configuration files for a minimal and productive Unix-based setup, managed with [mise](https://mise.jdx.dev/).

## Setup

On a new machine, install mise from its COPR, and git:

```bash
sudo dnf copr enable jdxcode/mise
sudo dnf install mise git
```

Then clone the dotfiles and bootstrap everything except services:

```bash
git clone https://github.com/aldahermaxim/.dotfiles.git ~/.dotfiles
MISE_CONFIG_DIR=~/.dotfiles/.config/mise mise bootstrap --skip services
```

Start the services last. This starts the login screen, which takes over the console and ends your login there, so log in through it:

```bash
mise bootstrap --only services
```

`MISE_CONFIG_DIR` is only needed the first time, until `~/.config/mise` is linked. After that, `mise bootstrap` applies packages, system files, services, dotfiles, the login shell and tools.

## Day to day

```bash
mise dot status              # check the links
mise dot add ~/.config/foo   # start managing a new config
```