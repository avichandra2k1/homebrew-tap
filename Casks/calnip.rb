cask "calnip" do
  version "0.1.2"
  sha256 "3fbbd936afa78901adb2d22fb18bf4281d8a6a9a39a454e3208106df4d1bf3e5"

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
