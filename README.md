# CVRT Homebrew Casks

Homebrew Cask formulas for CVRT macOS applications.

## Installation

```bash
brew install cvrt-gmbh/cask/mucapture
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
sudo xattr -cr "/Applications/μCapture.app"
```

**Option 2: Right-click method**
1. Right-click (or Ctrl+click) the app in Finder
2. Select "Open" from the menu
3. Click "Open" in the dialog that appears

This only needs to be done once per app.

---

*[CVRT GmbH](https://cvrt.dev)*
