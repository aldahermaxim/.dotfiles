# My Arch Linux Dotfiles

## Symlinking

```bash
cd .dotfiles
stow --target=$HOME .
```

## Switching shells

Switch to zsh:
```bash
chsh -s /usr/bin/zsh
```

Switch back to bash:
```bash
chsh -s /usr/bin/bash
```

Check current shell:
```bash
echo $SHELL
```
