cask "mucapture" do
  version "1.0.9"
  sha256 "c5b3d375c93690dcdc5570e2564e0cca9e8f30ed93c77a9ff41346f59b9972fe"

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
  EOS
end
