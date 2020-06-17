class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v1.0.2-rc/raiden-v1.0.2-rc-macOS-x86_64.zip"
  version "v1.0.2-rc"
  sha256 "21f7a22ceff33ba7964e865e458ed3badf354c7222ef142576cfb4f527bef56b"

  depends_on :macos => :el_capitan

  def install
    mv "raiden-v1.0.2-rc-macOS-x86_64", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
