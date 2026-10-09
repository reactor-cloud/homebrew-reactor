class Reactor < Formula
  desc "CLI for the Reactor backend"
  homepage "https://github.com/reactor-cloud/reactor"
  url "https://github.com/reactor-cloud/reactor/archive/refs/tags/v1.26.10-beta9.tar.gz"
  sha256 "bf87294c80745c287567a6110e637d920c383c5b43637fe0710d493e01f3fe38"
  license "BUSL-1.1"
  version "1.26.10-beta9"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/reactor-cli", "--root", prefix
    mv bin/"reactor-cli", bin/"reactor"
  end

  test do
    assert_match "reactor", shell_output("#{bin}/reactor --help")
  end
end
