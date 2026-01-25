cask "mucapture" do
  version "1.0.3"
  sha256 "9752dc15ad8d1e88fcee7358a2831ece4064b71c086e9a63c0184100e8060d1d"

  url "https://github.com/cvrt-gmbh/mu-capture/releases/download/v#{version}/muCapture-#{version}.zip"
  name "μCapture"
  desc "Native macOS app for capturing images and videos from USB capture cards"
  homepage "https://github.com/cvrt-gmbh/mu-capture"

  depends_on macos: ">= :sonoma"

  app "MuCapture.app"

  zap trash: [
    "~/Library/Preferences/de.cvrt.MuCapture.plist",
    "~/Library/Saved Application State/de.cvrt.MuCapture.savedState",
  ]

  caveats <<~EOS
    #{token} requires camera permissions to access capture devices.
    Grant permission when prompted on first launch.

    If macOS blocks the app ("Apple could not verify..."), run:
      sudo xattr -cr "/Applications/MuCapture.app"
    Or: Right-click the app → Open → Click "Open" in the dialog.
  EOS
end
