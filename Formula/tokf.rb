class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.29/tokf-v0.2.29-aarch64-apple-darwin.tar.gz"
      sha256 "ec2f11c0e2ee01b8ac6fbb5a6f40b2b6c6fec8a98b6e9e11eaf8bda44ab4bdf9"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.29/tokf-v0.2.29-x86_64-apple-darwin.tar.gz"
      sha256 "68a24cbf93ca98137e95638e8069a79649896bfd02fb201186a1bb1dee2526b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.29/tokf-v0.2.29-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55e9418d34961e85268994cd96fc8a1f0b7b6d7e6666f704ce652681e35f50e4"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
