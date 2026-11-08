class Sbar < Formula
  desc "Persistent status bar for your terminal"
  homepage "https://github.com/funkydude755/sbar"
  url "https://github.com/funkydude755/sbar/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "33f9d6da17b1317573269c32fd1f78e49db22f79ec8589be9ab22285f746394d"
  license "MIT"

  depends_on "rust" => :build

  # Local bottle builds use a preinstalled Rust toolchain on each platform.
  env :std

  def install
    system "cargo", "install", *std_cargo_args
    (share/"licenses/sbar").install "LICENSE", "THIRD_PARTY_LICENSES.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbar --version")
  end
end
