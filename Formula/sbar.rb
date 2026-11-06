class Sbar < Formula
  desc "Persistent status bar for your terminal"
  homepage "https://github.com/funkydude755/sbar"
  url "https://github.com/funkydude755/sbar/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "d2472e139c8a0a8c81ace903362cc86b18f60db6f72daeb7482760776809799f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    (share/"licenses/sbar").install "LICENSE", "THIRD_PARTY_LICENSES.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbar --version")
  end
end
