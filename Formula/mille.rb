class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.6/mille-0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "05ca3bbd4e9169c39fce65368f8a8c7db884717a5ae9aeb8fd2b33be8034b1f2"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.6/mille-0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "9fa95e785bf6b2ad51dcd87b6f7d5cb0747b3493836e892a1eeec07a56152e59"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.6/mille-0.0.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "99366a2aa1812ccf0a94183efcacddcaabbfed32b5327cedf2fec9c1c4fd342b"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
