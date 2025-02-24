class Dotdev < Formula
  desc "Lightweight Web server for static HTML with built-in live reload written in Go."
  homepage "https://github.com/petlack/dotdev"
  url "https://github.com/petlack/dotdev/archive/refs/tags/v0.0.1.20250224.03.tar.gz"
  sha256 "46075f612ab7ec05d84a8cc2061add0fecdb78545d57f1716fecb18a090611b7"
  license "GPL-3.0-or-later"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "0.0.1.20250224.03", shell_output("#{bin}/dotdev --version")
  end
end
