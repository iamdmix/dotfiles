# AeroSpace Tiling Window Manager

Tiling window manager configuration for macOS based on i3/sway paradigm.

- **Default Layout:** Tiles (Smart auto-orientation)
- **Service Mode:** `Option + Shift + ;`

---

## Dedicated Workspace Assignments

Applications automatically route to designated lettered workspaces upon launch:

| Workspace | Name | Assigned Applications |
| :--- | :--- | :--- |
| **`T`** | Terminal | Ghostty, iTerm2, Terminal.app |
| **`C`** | Code | Visual Studio Code |
| **`S`** | Surf | Safari, Google Chrome, Firefox |
| **`N`** | Notes | Obsidian, Apple Notes |
| **`W`** | Web Chat | WhatsApp |
| **`D`** | Discord | Discord |
| **`M`** | Music | Apple Music |
| **`P`** | Presentation / PDF | Preview, Pages, Keynote |

---

## Keybinding Cheat Sheet

### Window Focus (`Option + <Key>`)
- `Option + H` : Focus Left
- `Option + J` : Focus Down
- `Option + K` : Focus Up
- `Option + L` : Focus Right

### Window Movement (`Option + Shift + <Key>`)
- `Option + Shift + H` : Move Window Left
- `Option + Shift + J` : Move Window Down
- `Option + Shift + K` : Move Window Up
- `Option + Shift + L` : Move Window Right
- `Option + Shift + F` : Toggle Fullscreen

### Layout & Resizing
- `Option + /` : Switch layout to **Tiles** (Horizontal / Vertical)
- `Option + ,` : Switch layout to **Accordion** (Horizontal / Vertical)
- `Option + -` : Smart resize -50px
- `Option + =` : Smart resize +50px

### Workspaces & Monitors
- `Option + <Key>` : Switch to Workspace (`1-7`, `9`, `C`, `D`, `M`, `N`, `P`, `S`, `T`, `W`)
- `Option + Shift + <Key>` : Move focused window to Workspace
- `Option + Tab` : Workspace Back-and-Forth (Toggle last used)
- `Option + Shift + Tab` : Move current workspace to next monitor

---

## Service Mode (`Option + Shift + ;`)

Enter Service Mode to perform layout resets, container joins, or config reloads:

| Shortcut | Action |
| :--- | :--- |
| `Esc` | Reload config and exit to main mode |
| `F` | Toggle Floating / Tiling mode |
| `R` | Flatten workspace tree (reset layout) |
| `Backspace` | Close all windows except current active window |
| `Option + Shift + H/J/K/L` | Join container left / down / up / right |
| `Up` / `Down` | Adjust system volume |
| `Shift + Down` | Mute volume (Set to 0) |
