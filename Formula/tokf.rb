class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.11/tokf-v0.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "4b9172323a73a84b826e59a33f5032862b937221890f1aa2652b0b31c5df26e8"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.11/tokf-v0.2.11-x86_64-apple-darwin.tar.gz"
      sha256 "2d5d82460b159bff5b40c3edc712f4a37402c0042f909fb5ea925c73f9125118"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.11/tokf-v0.2.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79f13aeb090a6fb11afb77d309ce50bfeb61c4645a057576f19e3c4c9a6a519e"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
