class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.7/tokf-v0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "5b53170b05b4e6645a099ae2d0e2c563059063d3b263d284df0a9540fde6ce10"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.7/tokf-v0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "cd80ebcd84dc97cde364ae30e1da0ca400ab651a37a887dd34a0f478bc838073"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.7/tokf-v0.2.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14c5952e35e203a77bd39f730d8ae006545e6826dbf8ca015a9033d47aef3970"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
