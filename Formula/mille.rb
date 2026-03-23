class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.13/mille-0.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "e6f9b88437af73b0b894f8d77278b30d8a1bc45e134e5932f259bb15502ce2aa"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.13/mille-0.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "6a0afc0f5046227ad2bd9e97436b0bfef619a19d25f55ad941065c3ffcfb55ed"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.13/mille-0.0.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e027e8f042adec1f97ea89164186a853a989dd7a06fb008ab9d2f49a77d24f30"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
