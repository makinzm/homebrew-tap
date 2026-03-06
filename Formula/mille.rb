class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.5/mille-0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "562ab0106bade52f52285f2a9d4bccd595a087a0c4720e41d7c1596e71a064b4"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.5/mille-0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "1456898d7271d59db8bc7b475e51627aa1c9bc4ae1cedb27a21addee13c746da"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.5/mille-0.0.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d06ffef046c735cea35ae9c0757d2f303e8093f9469cd1864082be7d8640aa99"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
