class Sbar < Formula
  desc "Persistent status bar for your terminal"
  homepage "https://github.com/funkydude755/sbar"
  url "https://github.com/funkydude755/sbar/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "d2472e139c8a0a8c81ace903362cc86b18f60db6f72daeb7482760776809799f"
  license "MIT"

  bottle do
    root_url "https://github.com/funkydude755/homebrew-tap/releases/download/sbar-0.2.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "faed8205905289e1c6277d76012920e29076b2c01df98d1de360ef119d75fa77"
    sha256 cellar: :any_skip_relocation, sequoia:       "c982a5fb36f0a5423dc60ae1383a965f049a2bffc1af46be6f05882baa35a3b2"
    sha256 cellar: :any,                 arm64_linux:   "cca4133dec324b4445352474eb66f54b307744de5eb232a263dbd8701f8d8200"
    sha256 cellar: :any,                 x86_64_linux:  "50b71d93a5dcea355f41434a01616fcdee57df74124535a1c4fa1e979a12fe7b"
  end

  depends_on "rust" => :build

  on_macos do
    on_intel do
      # Intel CI uses the runner's Rust toolchain because Homebrew no longer bottles it.
      env :std
    end
  end

  def install
    system "cargo", "install", *std_cargo_args
    (share/"licenses/sbar").install "LICENSE", "THIRD_PARTY_LICENSES.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbar --version")
  end
end
