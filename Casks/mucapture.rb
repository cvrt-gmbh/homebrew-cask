cask "mucapture" do
  version "1.0.2"
  sha256 "68a7b2bca0e88e5f0782035c84f7665243cf038d70d60e05034803c5d2c13f2c"

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
