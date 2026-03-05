class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.4/mille-0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "1e9406205c36d37bfd5b23403aac4fa6d8a40f40299e424d46886b108f7b7937"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.4/mille-0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "72c90f27a13d1e97e78099183a16930d38686713cc197e0f42e87b8290e15a3c"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.4/mille-0.0.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fe6723e4c500b513fca09f135c9b09f5ccd3b5bbc07ef8146d55a5961e389fbb"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
