cask "calnip" do
  version "0.1.1"
  sha256 "d1e8f302d6aff8d6d7ab42289e655e814186861063225584d05990d12fb27b67"

  url "https://github.com/avichandra2k1/Calnip/releases/download/v#{version}/Calnip-#{version}.zip"
  name "Calnip"
  desc "Keyboard-first quick-entry launcher for Apple Calendar"
  homepage "https://github.com/avichandra2k1/Calnip"

  depends_on macos: :tahoe

  app "Calnip.app"

  zap trash: [
    "~/Library/Preferences/com.avi.calnip.plist",
  ]
end
