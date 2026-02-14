class Arthema < Formula
  desc "A fast, lightweight, and futuristic Cyberpunk-themed API IDE"
  homepage "https://github.com/arthema/arthema"
  url "https://github.com/arthema/arthema/archive/refs/tags/v0.2.9.tar.gz"
  sha256 "1e32c0c107365fab2b60031c645e979c5cfdfa8711679421effee4a664bc4672"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/arthema", "--version"
  end
end
