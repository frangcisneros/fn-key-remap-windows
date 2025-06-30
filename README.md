# FN Key Remap for Windows (AutoHotkey v2)

This AutoHotkey v2 script inverts the behavior of F5–F11 keys on standard Windows keyboards, making them act as media keys by default (e.g., Play/Pause, Volume Up, etc.). The original F-keys can still be used by holding the `Alt` key.

Designed for permanent use: no tray icon, no exit shortcut, and auto-start on login.

## 🔧 Features

- F5 → Previous Track
- F6 → Next Track
- F7 → Play / Pause
- F8 → Not remapped (functions as normal F8)
- F9 → Mute
- F10 → Volume Down
- F11 → Volume Up
- `Alt + F5–F11` → Sends the original F-keys
- No exit hotkey (`Esc` is disabled or removed)
- Hidden tray icon (`#NoTrayIcon`)
- Auto-execution on Windows startup (via `shell:startup`)

## 🚀 Installation

1. Install [AutoHotkey v2](https://www.autohotkey.com/download/).
2. Clone this repo or download the script file:
   ```bash
   git clone https://github.com/your-username/fn-key-remap-windows.git
   ```
3. Place the script in a fixed location (e.g., `Documents\AutoHotkey\fn_keys.ahk`).
4. Add a shortcut to the script (or compiled `.exe`) in your Startup folder:
   - Press `Win + R`, type `shell:startup`, and press Enter.
   - Copy the shortcut to the script inside the folder that opens.
5. Restart your PC or log out/in to verify the script runs automatically.

## 💻 Optional: Compile to .EXE

Use Ahk2Exe (included with AHK installation) to compile the script if you want to hide the source or run it as a standalone executable.

Use `AutoHotkeyU64.exe` as base file (for 64-bit systems).

## 🛑 How to Stop the Script

The script is designed to run without any exit key or tray icon.
To stop it manually:

1. Open Task Manager (`Ctrl+Shift+Esc`)
2. Find and end the AutoHotkey process (or your compiled .exe)

## ⚙️ Customization

You can easily modify the script to add or change key mappings according to your preferences.

### Adding New Key Mappings

To add more function keys or change existing mappings, edit the `fn_keys.ahk` file:

1. **Media Keys**: Add new media key mappings using this format:

   ```autohotkey
   $F8:: SendInput "{Volume_Up}"     ; Maps F8 to Volume Up
   $F12:: SendInput "{Media_Stop}"   ; Maps F12 to Media Stop
   ```

2. **Alt Combinations**: For each new mapping, add the Alt+Key combination to preserve original F-key functionality:
   ```autohotkey
   $!F8:: SendInput "{SC042}"        ; Alt+F8 sends original F8
   $!F12:: SendInput "{SC058}"       ; Alt+F12 sends original F12
   ```

### Available Media Keys

- `{Media_Play_Pause}`, `{Media_Stop}`, `{Media_Prev}`, `{Media_Next}`
- `{Volume_Up}`, `{Volume_Down}`, `{Volume_Mute}`
- `{Launch_Mail}`, `{Launch_Media}`, `{Launch_App1}`, `{Launch_App2}`

### Finding Scan Codes

To find the correct scan code for any F-key, you can use this AutoHotkey command:

```autohotkey
; Run this temporarily to see scan codes
#HotIf GetKeyName(A_ThisHotkey) = "F12"
F12::MsgBox("Scan code: " . GetKeySC("F12"))
```

## 📂 Files

- `fn_keys.ahk` — Main script with remap logic
- `LICENSE` — MIT License file

## 📝 License

MIT License. See LICENSE for details.

---
