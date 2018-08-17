class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.5.1/raiden-v0.5.1-macOS.zip"
  version "v0.5.1"
  sha256 "31244ab493283cc8e399a65f1383c73fe1c3546bd914bd6adb0a62df6c89d34d"

  depends_on :macos => :el_capitan

  def install
    # Homebrew extracts the file after download but keeps the extension - WTF?
    mv "raiden-v0.5.1-macOS.zip", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
