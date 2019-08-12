class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.100.5a0-dev1-dev0/raiden-v0.100.5a0-dev1-dev0-macOS-x86_64.zip"
  version "v0.100.5a0-dev1-dev0"
  sha256 "90df67ab90d32b670dfda867fa3442b780b473e6f824859cd631f266758592ef"

  depends_on :macos => :el_capitan

  def install
    mv "raiden-v0.100.5a0-dev1-dev0-macOS-x86_64", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
