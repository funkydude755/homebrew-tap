class Sbar < Formula
  desc "Persistent status bar for your terminal"
  homepage "https://github.com/funkydude755/sbar"
  url "https://github.com/funkydude755/sbar/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "33f9d6da17b1317573269c32fd1f78e49db22f79ec8589be9ab22285f746394d"
  license "MIT"

  bottle do
    root_url "https://github.com/funkydude755/homebrew-tap/releases/download/sbar-0.2.4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a5bd1a7623bd94fb996f869784e5a036190bab88cde7f70e3da9bdca0b661adb"
    sha256 cellar: :any_skip_relocation, sequoia:       "1404c31f4b0bdb76a246892af7f168410d5d65c754257aed3fcf7175d3d597d5"
    sha256 cellar: :any,                 arm64_linux:   "1b3743960cf6cd99ed1df045dcf527c79c47f526dfbd63d24517eaf2116e2f0f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6a8dec7fd7429c6e28980b3ece3b29baf5e60660c7436a28dba69344dafe582c"
  end

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
