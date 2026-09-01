# Karabiner-Elements Configuration

Keyboard remapping setup for macOS using TypeScript DSL based on [mxstbr/karabiner](https://github.com/mxstbr/karabiner).

- **Hyper Key:** Hold `Caps Lock` (`⌃⌥⇧⌘`) / Tap for `Escape`
- **Caps Lock LED Fix:** Set `Caps Lock` to **No Action** in *System Settings → Keyboard → Keyboard Shortcuts → Modifier Keys* to prevent the hardware light from turning on during usage
- **Base Navigation:** `Hyper + H/J/K/L` (Vim arrow navigation)

---

## Dedicated Sublayer Assignments

Holding `Hyper + <Sublayer Key>` unlocks dedicated shortcut maps:

| Sublayer | Name | Mapped Actions / Applications |
| :--- | :--- | :--- |
| **`O`** | Open Apps | Ghostty, VS Code, Safari, Firefox, Obsidian, Notes, Music, Keynote |
| **`B`** | Browse | Twitter, Calendar, Hacker News, Facebook, Reddit, Hashnode |
| **`W`** | Window | Window tiling, tab switching, display spaces, navigation |
| **`S`** | System | Volume, brightness, light/dark theme, lock, DND, Key Light |
| **`V`** | moVe | Arrow keys, Page Up/Down, Homerow navigation modes |
| **`C`** | Music | Play/Pause, Fast Forward, Rewind |
| **`R`** | Raycast | AI Chat, Clipboard history, Emoji picker, Toothpick, Confetti |

---

## Keybinding Cheat Sheet

### Base Navigation (`Hyper + <Key>`)
- `Hyper + H` : Left Arrow
- `Hyper + J` : Down Arrow
- `Hyper + K` : Up Arrow
- `Hyper + L` : Right Arrow
- `Hyper + Spacebar` : Create Notion Todo

### Open Applications (`Hyper + O + <Key>`)
- `T` : Ghostty
- `C` : Visual Studio Code
- `S` : Safari
- `F` : Firefox
- `N` : Obsidian
- `B` : Apple Notes
- `M` : Apple Music
- `P` : Keynote

### Window Management (`Hyper + W + <Key>`)
- `H / L` : Tile Left / Right Half
- `K / J` : Tile Top / Bottom Half
- `F` : Maximize Window
- `Y / O` : Move Window to Previous / Next Display
- `U / I` : Previous / Next Tab
- `N` : Next Window (`Cmd + \``)
- `B / M` : Back / Forward (`Cmd + [` / `Cmd + ]`)
- `;` : Hide Window (`Cmd + H`)

### System Controls (`Hyper + S + <Key>`)
- `U / J` : Volume Up / Down
- `I / K` : Display Brightness Up / Down
- `P / ;` : Play/Pause / Fast Forward
- `L` : Lock Screen (`Ctrl + Cmd + Q`)
- `E` : Toggle Elgato Key Light
- `D` : Toggle Do Not Disturb
- `T` : Toggle Light/Dark Theme
- `C` : Open Camera
- `V` : Voice Input (`Option + Space`)

### Raycast Shortcuts (`Hyper + R + <Key>`)
- `A` : Raycast AI Chat
- `H` : Clipboard History
- `E` : Emoji Search
- `C` : Color Picker
- `N` : Dismiss Notifications
- `P` : Confetti
- `L` : Create Shortlink
- `1 / 2` : Toothpick Favorite Device 1 / 2

---

## App-Specific Rules

Contextual overrides trigger automatically when targeted applications are active:

| Application | Condition | Shortcut Mapping |
| :--- | :--- | :--- |
| **Minecraft** | Frontmost Window | `Backspace` $\rightarrow$ `Spacebar` |
