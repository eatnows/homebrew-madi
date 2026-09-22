class Madi < Formula
  desc "Native Rust code editor built on the gyeol UI toolkit, centered on git worktrees"
  homepage "https://github.com/eatnows/madi"
  url "https://github.com/eatnows/madi/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "55c5718435ed2ae1c1e930cecb2093f5e4dca93ec1fd5c9a8b7d76d51e1fdb00"
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
