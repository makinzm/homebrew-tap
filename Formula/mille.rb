class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.12/mille-0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "2bbf9b5c5d3ad00f6804a758c8a3f4927a9e8e6d07f4b5aff4aabdec783f9480"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.12/mille-0.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "e9f27e0ede4c3397ceb3f836f5005aa2f5083e845cc1c520c1af83e18b568f76"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.12/mille-0.0.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f95aa096c13ab8d13fe47219e01e8ca389570f2bceaad1ae785b0907a5a233fc"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
