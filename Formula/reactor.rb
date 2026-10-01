class Reactor < Formula
  desc "CLI for the Reactor backend"
  homepage "https://github.com/reactor-cloud/reactor"
  url "https://github.com/reactor-cloud/reactor/archive/refs/tags/v1.26.10-beta5.tar.gz"
  sha256 "5d35102fa01b86ab0e39adda140f8f0c0d4ceeba8b2275891e371daf4e83e639"
  license "BUSL-1.1"
  version "1.26.10-beta5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/reactor-cli", "--root", prefix
    mv bin/"reactor-cli", bin/"reactor"
  end

  test do
    assert_match "reactor", shell_output("#{bin}/reactor --help")
  end
end
