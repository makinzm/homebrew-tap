class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.3/mille-0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "376eef621b055f90328347d9161593692b56d4257632c47f401b9f6e3ca347ae"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.3/mille-0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "bf2aa7a51a5ca349b21a0358b740fb388dd26098a67a67e55142dc8188b60850"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.3/mille-0.0.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f92deeaf9108b793545295cb59eaa093192064da8137ff75224d72078f7e9ae3"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
