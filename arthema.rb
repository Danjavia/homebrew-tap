class Arthema < Formula
  desc "A fast, lightweight, and futuristic Cyberpunk-themed API IDE"
  homepage "https://github.com/Danjavia/arthema"
  url "https://github.com/Danjavia/arthema/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "94ebfb8c4d9df994e2f475cf81ac7d5f03d1b54cf73cf48196cd5991655ddd3b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/arthema", "--version"
  end
end
