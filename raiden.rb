class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v1.1.1/raiden-v1.1.1-macOS-x86_64.zip"
  version "v1.1.1"
  sha256 "054a41b60d7112caea9b073917e9e094d7b9cecf8f81b1d26e9ad919406ef126"

  depends_on :macos => :el_capitan

  def install
    mv "raiden-v1.1.1-macOS-x86_64", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
