class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.200.0-rc8/raiden-v0.200.0-rc8-macOS-x86_64.zip"
  version "v0.200.0-rc8"
  sha256 "6dc82322ef67c76a9f92b1786a11922f3c3a0ed120a384f57137681625a3a6dc"

  depends_on :macos => :el_capitan

  def install
    mv "raiden-v0.200.0-rc8-macOS-x86_64", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
