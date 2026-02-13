class Arthema < Formula
  desc "A fast, lightweight, and futuristic Cyberpunk-themed API IDE"
  homepage "https://github.com/Danjavia/arthema"
  url "https://github.com/Danjavia/arthema/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f2c8aba1f9bd76d3861e014a3a0f85a5d5e29272194d7ed1326a9aa6f9f0954e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/arthema", "--version"
  end
end
