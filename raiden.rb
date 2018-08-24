class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.6.0/raiden-v0.6.0-macOS.zip"
  version "v0.6.0"
  sha256 "8caf1efb0f4d6a195a0170bd63d0a27ce8ae2704774fc9506595946687e75889"

  depends_on :macos => :el_capitan

  def install
    # Homebrew extracts the file after download but keeps the extension - WTF?
    mv "raiden-v0.6.0-macOS.zip", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
