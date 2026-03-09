class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.11/mille-0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "c54ac847a9fcce767f34284f1ff5c3e2348344000db24610e09e61323ed765dd"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.11/mille-0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "456f0fd8b90ac36602b140f081d48934060c4e710d4c55f2ffe2508992b5e042"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.11/mille-0.0.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "30c1e2035d11138407be8895409135e217a03fdcc14d74aa9e90633820c17dd5"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
