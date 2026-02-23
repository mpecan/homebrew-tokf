class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.4/tokf-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "ff8f6265641df935361e1676bb0569e8142944a7d0a30c51c951ddb81390486a"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.4/tokf-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "99daa467cb66d04c98503b20fef9768e6eeaf5fcf2f936c64667d3f21be219ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.4/tokf-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4085b5186f265d19c2bdc196d5804076a5ee971c0a45c2ca95ee13dee9e84d30"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
