class Socr < Formula
  desc "Capture a screen region and OCR it with Apple Vision"
  homepage "https://github.com/avichandra2k1/socr"
  url "https://github.com/avichandra2k1/socr/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "59f193eb5032867fb03113fa6c1f6290b338a6ed5e99de91ec4ec1b6f007f43f"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :ventura

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/socr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/socr --version")
    assert_match "en-US", shell_output("#{bin}/socr languages")
  end
end
