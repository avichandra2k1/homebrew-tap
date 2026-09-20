class Socr < Formula
  desc "Capture a screen region and OCR it with Apple Vision"
  homepage "https://github.com/avichandra2k1/socr"
  url "https://github.com/avichandra2k1/socr/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1cafb54290f5ba7df3f73dfc5f832ef0586eabb2d63923e86c0cce932cbe5122"
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
