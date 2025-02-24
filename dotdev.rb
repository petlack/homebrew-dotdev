class Dotdev < Formula
  desc "Lightweight Web server for static HTML with built-in live reload written in Go."
  homepage "https://github.com/petlack/dotdev"
  url "https://github.com/petlack/dotdev/archive/refs/tags/v0.0.1.20250224.02.tar.gz"
  sha256 "1771576c3a14bdda03b1219d73995a0535a0688b63c8bb130ca7e4be3bafca4b"
  license "GPL-3.0-or-later"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "dotdev", shell_output("#{bin}/dotdev --version")
  end
end
