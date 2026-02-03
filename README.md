# Homebrew Casks

[![Homebrew](https://img.shields.io/badge/Homebrew-Tap-orange.svg)](https://brew.sh)
[![macOS](https://img.shields.io/badge/macOS-14.0+-blue.svg)](https://apple.com/macos)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Homebrew Cask formulas for CAVORT macOS applications.

## Installation

```bash
brew install cvrt-gmbh/cask/<cask-name>
```

## Available Casks

| Cask | Description |
|------|-------------|
| `mucapture` | Native macOS app for capturing microscope images/videos via USB capture cards |

## Troubleshooting

### Gatekeeper Blocks App

If macOS shows "Apple could not verify [app] is free of malware":

**Option 1: Terminal command**
```bash
sudo xattr -cr "/Applications/<AppName>.app"
```

**Option 2: Right-click method**
1. Right-click (or Ctrl+click) the app in Finder
2. Select "Open" from the menu
3. Click "Open" in the dialog that appears

This only needs to be done once per app.

---

*[CAVORT Konzepte GmbH](https://cavort.de)*
