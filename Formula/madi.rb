class Madi < Formula
  desc "Native Rust code editor built on the gyeol UI toolkit, centered on git worktrees"
  homepage "https://github.com/eatnows/madi"
  url "https://github.com/eatnows/madi/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "727ecc4245281ac7c9bdf4005e650086769fe435a77d7ac70de936759cac949a"
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
