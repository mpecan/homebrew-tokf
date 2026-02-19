class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.5/tokf-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "bfd3c9fdbdba0b3add0cd23627b08ad7a6b34a3bcfa79fe811565b5d2f86290e"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.5/tokf-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "d1408ace91148ebfbf7204db18ced4db31a4b428cf9c7aeac0533efe588dc16f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.1.5/tokf-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac5ebceca7efe2f09c1682c8d5e073ff4f988ca6ee2fbe3b3a23058d64476e16"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
