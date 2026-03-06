class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.5/mille-0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "0f486391b867169299addc53e971fad9500c0947ec032f513cfb9a33d4e4b970"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.5/mille-0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "c86a352a7af31122b39f3ffe399fda1a28d5b102b49faf8cb91923b44617dacf"
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
