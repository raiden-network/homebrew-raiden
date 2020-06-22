class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v1.1.0/raiden-v1.1.0-macOS-x86_64.zip"
  version "v1.1.0"
  sha256 "9dc2aa935a003934d80ee8b46c8f74bd35ece17cd984c20892e0e115570c7e6a"

  depends_on :macos => :el_capitan

  def install
    mv "raiden-v1.1.0-macOS-x86_64", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
