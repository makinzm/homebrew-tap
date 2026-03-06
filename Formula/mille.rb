class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.8/mille-0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "e567d7d9ebb9e69440dbdaaf679f6047b9fd38d40a13531011f83e2a180cb172"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.8/mille-0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "6a358b6a4c7ca311ec38c481f1043ba01ffb791c8156ef87d3c982fa23fe0e23"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.8/mille-0.0.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c69b4f1c083d691b32133e0bcbe1fa0ef040eae69d6788352f1cd2eeb2d18ddb"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
