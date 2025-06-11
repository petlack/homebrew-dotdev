class Dotdev < Formula
  desc "Lightweight Web server for static HTML with built-in live reload written in Go."
  homepage "https://github.com/petlack/dotdev"
  url "https://github.com/petlack/dotdev/archive/refs/tags/v0.0.1.20250611.01.tar.gz"
  sha256 "ff54d1bded38c8e846c5218dd5d959e736d30fdbc0843023b744cdf1c1e97925"
  license "GPL-3.0-or-later"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "0.0.1.20250611.01", shell_output("#{bin}/dotdev --version")
  end
end
