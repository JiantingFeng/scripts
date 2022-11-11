# Reusable Scripts

This repo consists of some of my daily used script, including `.py` and `.sh` for personal use.

### 1. `copy_boilerplate.py`

Usage:

```shell
python copy_boilerplate.py "<DIRNAME>"
```

This script is used to copy **LaTeX** boilerplate files into a new directory, unlike javascript, python, etc, for LaTeX writing, there is no scaffolding tools to use. In order to avoiding manually `<C-c>` and `<C-v>` every directory and rename endlessly, I write this small script.

This script still lacks many of the key features, I will add these later. `PR` is always welcome.

ToDo:

- [ ] add `.gitignore`-like feature, avoid copying `.DS_STORE` and other meaningless files or dirs.
- [ ] add progress bar to show progress when copying large files. (A potential tool: `rich.progress`)

### 2. upgrade.sh

Usage

```shell
sudo sh upgrade.sh
```

> You can also paste this script to your apple shortcuts, but it doesn't work on my machine.

This will upgrade your packages installed by

1. Homebrew
2. pip
3. npm
4. yarn
5. pnpm
6. vcpkg
7. Packer (for NeoVim plugins)

and sync your dotfiles under `~/.config` via git.

Also use mackup to backup your mac.

# License

Most of my code is under MIT License, therefore, feel free to use or distribute them.
