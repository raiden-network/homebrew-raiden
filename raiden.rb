class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.100.1/raiden-v0.100.1-macOS.zip"
  version "v0.100.1"
  sha256 "6b609a318e6f68d2412bee5e327764858c18023c00f1efc7db65bab539f73e79"

  depends_on :macos => :el_capitan

  def install
    mv "raiden-v0.100.1-macOS", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
