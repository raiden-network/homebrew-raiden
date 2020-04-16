class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.200.0-rc7/raiden-v0.200.0-rc7-macOS-x86_64.zip"
  version "v0.200.0-rc7"
  sha256 "e5b8d44590e1e735fee359cb58a608038311c32d33e22da6db6211cc22237e8c"

  depends_on :macos => :el_capitan

  def install
    mv "raiden-v0.200.0-rc7-macOS-x86_64", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
