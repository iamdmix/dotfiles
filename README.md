# dmix dotfiles

Personal macOS dotfiles focused on a keyboard-first workflow, tiling window management, and fast terminal/shell startup.

## Components

| Component                                                  | Description                               |
| :--------------------------------------------------------- | :---------------------------------------- |
| [AeroSpace](https://github.com/nikitabobko/AeroSpace)      | i3-like tiling window manager for macOS.  |
| [Ghostty](https://github.com/ghostty-org/ghostty)          | GPU-accelerated terminal emulator.        |
| [Karabiner-Elements](https://karabiner-elements.pqrs.org/) | Keyboard remapping and complex key rules. |
| [Powerlevel10k](https://github.com/romkatv/powerlevel10k)  | Zsh prompt theme used by this setup.      |

## Repository layout

```text
.
├── aerospace/
│   └── aerospace.toml
├── ghostty/
│   └── config
├── karabiner/
│   └── karabiner.json
└── zsh/
    ├── .p10k.zsh
    └── .zshrc
```

## Setup

1. Clone the repo.

```bash
git clone git@github.com:<your-username>/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

2. Install dependencies.

```bash
brew install --cask karabiner-elements
brew install zsh
```

Install AeroSpace and Ghostty from their official releases/pages.

3. Link configs.

```bash
ln -sf "$PWD/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$PWD/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

mkdir -p "$HOME/.config/aerospace"
ln -sf "$PWD/aerospace/aerospace.toml" "$HOME/.config/aerospace/aerospace.toml"

mkdir -p "$HOME/.config/ghostty"
ln -sf "$PWD/ghostty/config" "$HOME/.config/ghostty/config"

mkdir -p "$HOME/.config/karabiner"
ln -sf "$PWD/karabiner/karabiner.json" "$HOME/.config/karabiner/karabiner.json"
```

4. Reload shell.

```bash
source "$HOME/.zshrc"
```

## Notes

- Restart AeroSpace, Ghostty, and Karabiner-Elements after changing config files.
- If prompt settings are not applied, confirm Powerlevel10k is installed and sourced from .zshrc.
