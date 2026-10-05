class Reactor < Formula
  desc "CLI for the Reactor backend"
  homepage "https://github.com/reactor-cloud/reactor"
  url "https://github.com/reactor-cloud/reactor/archive/refs/tags/v1.26.10-beta7.tar.gz"
  sha256 "14c755bfc60718fdb699f5e1095344c6ae16be3a4b12c357ad52badf7cb765db"
  license "BUSL-1.1"
  version "1.26.10-beta7"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/reactor-cli", "--root", prefix
    mv bin/"reactor-cli", bin/"reactor"
  end

  test do
    assert_match "reactor", shell_output("#{bin}/reactor --help")
  end
end
