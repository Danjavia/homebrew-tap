class Arthema < Formula
  desc "A fast, lightweight, and futuristic Cyberpunk-themed API IDE"
  homepage "https://github.com/Danjavia/arthema"
  url "https://github.com/Danjavia/arthema/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "15175cbff7dc904822a73fc5cb1119592804502c48f83e06f4e4ad99489b2f58"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/arthema", "--version"
  end
end
