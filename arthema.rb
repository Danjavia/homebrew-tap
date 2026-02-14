class Arthema < Formula
  desc "A fast, lightweight, and futuristic Cyberpunk-themed API IDE"
  homepage "https://github.com/Danjavia/arthema"
  url "https://github.com/Danjavia/arthema/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "bc8cdc1aa5ea61e249d2258918ad5cbd8f0c69c0eb54f150dffe542a4b004e08"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/arthema", "--version"
  end
end
