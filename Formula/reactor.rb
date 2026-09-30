class Reactor < Formula
  desc "CLI for the Reactor backend"
  homepage "https://github.com/reactor-cloud/reactor"
  url "https://github.com/reactor-cloud/reactor/archive/refs/tags/v1.26.09-beta.2.tar.gz"
  sha256 "0d7795288eea0406ea998a3d4fac69af656f8613d98a2b6769603689b8153c43"
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
