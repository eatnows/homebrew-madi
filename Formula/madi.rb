class Madi < Formula
  desc "Native Rust code editor built on the gyeol UI toolkit, centered on git worktrees"
  homepage "https://github.com/eatnows/madi"
  url "https://github.com/eatnows/madi/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "56d1c70360317b8bed4b38f7bcbb6df22540e34bfb701982a3bdc6e89701c1c3"
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
