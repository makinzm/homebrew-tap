class Mille < Formula
  desc "Architecture Checker — Rust-based multi-language architecture linter"
  homepage "https://github.com/makinzm/mille"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/makinzm/mille/releases/download/v0.0.10/mille-0.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "4c262f406c44511cf749cadfc06ff25e7276be7cccfc3f3a39376b4531d6e829"
    else
      url "https://github.com/makinzm/mille/releases/download/v0.0.10/mille-0.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "a7ff0676760b1e54238159066c0c779d5309db141617eccbe0c5c0bc32d7e32c"
    end
  end

  on_linux do
    url "https://github.com/makinzm/mille/releases/download/v0.0.10/mille-0.0.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c5c3d00b17861711033f305e9856520297197719a476627aa35fae7cbb602fb2"
  end

  def install
    bin.install "mille"
  end

  test do
    system "#{bin}/mille", "--version"
  end
end
