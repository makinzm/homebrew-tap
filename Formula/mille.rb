class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.9/mille-0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "021fc2a3bbc470a6d53318dadde54c041ed19c771bd3818c4aba223878a8b985"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.9/mille-0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "4b79ec8cc8be3188f6b6c2d2f3231f9e34b7bdcc014a947b21a5ee8f27b18480"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.9/mille-0.0.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b7a1b51de2444941cf42bfa41f509271b116fecabdb351e45f122a31bc320509"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
