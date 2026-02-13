class Arthema < Formula
  desc "A fast, lightweight, and futuristic Cyberpunk-themed API IDE"
  homepage "https://github.com/Danjavia/arthema"
  url "https://github.com/Danjavia/arthema/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "17aad05d0c8395cec9d07c7c4faf8fe9e19a9e6957f509509330518af6e22a75"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/arthema", "--version"
  end
end
