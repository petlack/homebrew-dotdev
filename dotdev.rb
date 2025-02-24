class Dotdev < Formula
  desc "Lightweight Web server for static HTML with built-in live reload written in Go."
  homepage "https://github.com/petlack/dotdev"
  url "https://github.com/petlack/dotdev/archive/refs/tags/v0.0.1.20250224.03.tar.gz"
  sha256 "f2e34ccbb16c2dd1433ca1c6b8e8320321da6559d2845fa7e81e7530f7e500b1"
  license "GPL-3.0-or-later"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "dotdev", shell_output("#{bin}/dotdev --version")
  end
end
