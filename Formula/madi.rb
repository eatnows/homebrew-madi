class Madi < Formula
  desc "Native Rust code editor built on the gyeol UI toolkit, centered on git worktrees"
  homepage "https://github.com/eatnows/madi"
  url "https://github.com/eatnows/madi/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "7e48184c0b7c2a4356b99ecd6179c59bfa42072a0f3fef3b00f733c258699fde"
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
