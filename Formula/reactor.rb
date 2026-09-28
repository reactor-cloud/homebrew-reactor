class Reactor < Formula
  desc "CLI for the Reactor backend"
  homepage "https://github.com/reactor-cloud/reactor"
  url "https://github.com/reactor-cloud/reactor/archive/refs/tags/v1.26.09-beta.1.tar.gz"
  sha256 "0d7795288eea0406ea998a3d4fac69af656f8613d98a2b6769603689b8153c43"
  license "BUSL-1.1"
  version "1.26.09-beta.1"

  bottle do
    root_url "https://github.com/reactor-cloud/homebrew-reactor/releases/download/v1.26.09-beta.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "35eab91bf99f612b0085f9ef4a749e272d6d9d99eb9f728ab352b6e9ac05e697"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/reactor-cli", "--root", prefix
    mv bin/"reactor-cli", bin/"reactor"
  end

  test do
    assert_match "reactor", shell_output("#{bin}/reactor --help")
  end
end
