class Madi < Formula
  desc "Native Rust code editor built on the gyeol UI toolkit, centered on git worktrees"
  homepage "https://github.com/eatnows/madi"
  url "https://github.com/eatnows/madi/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "fb79716c3624b0051d154c6432039d4cc3a2af7856eedf6d08d94542f6172513"
  license "GPL-3.0-or-later"
  head "https://github.com/eatnows/madi.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/app")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/madi --version")
  end
end
