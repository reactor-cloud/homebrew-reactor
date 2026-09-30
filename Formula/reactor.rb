class Reactor < Formula
  desc "CLI for the Reactor backend"
  homepage "https://github.com/reactor-cloud/reactor"
  url "https://github.com/reactor-cloud/reactor/archive/refs/tags/v1.26.09-beta.2.tar.gz"
  sha256 "9e6b9d8313f2b350cadf25cccfcd477fea4e398597ccfb7086f8aacba0c0ef27"
  license "BUSL-1.1"
  version "1.26.09-beta.2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/reactor-cli", "--root", prefix
    mv bin/"reactor-cli", bin/"reactor"
  end

  test do
    assert_match "reactor", shell_output("#{bin}/reactor --help")
  end
end
