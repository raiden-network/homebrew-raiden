class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.4.0/raiden-v0.4.0-macOS.zip"
  version "v0.4.0"
  sha256 "8728732aec2ac9b1a5885bf83866b2484c6d3cc1845950283fe3c08c196777b4"

  depends_on :macos => :el_capitan

  def install
    # Homebrew extracts the file after download but keeps the extension - WTF?
    mv "raiden-v0.4.0-macOS.zip", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
