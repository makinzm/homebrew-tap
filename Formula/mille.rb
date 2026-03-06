class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.7/mille-0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "3538d71ffcf5e877f6896892407d31f5e673d72429263112902a772ce6bea226"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.7/mille-0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "845a166efce4a3f97028e62f62c4ed399f9fdb0913820b19c80fc9c02acb3184"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.7/mille-0.0.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2f0fe317f800b76a0b6d825ddc3a41da40d54f35c0a41eb9ecc34e10568ef237"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
