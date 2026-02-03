cask "mucapture" do
  version "1.0.8"
  sha256 "654f533526aa891081dab7b26bcd1b80a17945e6395c15a2caed1a51f485dc9a"

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
