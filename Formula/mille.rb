class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.14/mille-0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "bb9c54f2c687db472a2b93bc350a64f3af5382475b69919ea530b681518e8d32"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.14/mille-0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "e57a7e564456a0163d7f43611bfdae948909ace0a1bf91aa8572c46adde72370"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.14/mille-0.0.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "36f1aaf2c4c0880a20f4bb335520c5bbf69413715c2cea42701770574003406c"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
