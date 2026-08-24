cask "calnip" do
  version "0.1.0"
  sha256 "064588f27dea8d188c0938f2258c008f146135e04f4b7bfede16694790baad98"

  url "https://github.com/avichandra2k1/calnip/releases/download/v#{version}/Calnip-#{version}.zip"
  name "Calnip"
  desc "Keyboard-first quick-entry launcher for Apple Calendar"
  homepage "https://github.com/avichandra2k1/calnip"

  depends_on macos: :tahoe

  app "Calnip.app"

  zap trash: [
    "~/Library/Preferences/com.avi.calnip.plist",
  ]
end
