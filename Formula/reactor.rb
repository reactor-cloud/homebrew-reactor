class Reactor < Formula
  desc "CLI for the Reactor backend"
  homepage "https://github.com/reactor-cloud/reactor"
  url "https://github.com/reactor-cloud/reactor/archive/refs/tags/v1.26.09-beta.4.tar.gz"
  sha256 "3421a9a0ca9f1ea26083b031c85620f2371e81ca13648eef509f4750e7ba93a6"
  license "BUSL-1.1"
  version "1.26.09-beta.4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/reactor-cli", "--root", prefix
    mv bin/"reactor-cli", bin/"reactor"
  end

  test do
    assert_match "reactor", shell_output("#{bin}/reactor --help")
  end
end
