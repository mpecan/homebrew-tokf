class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.19/tokf-v0.2.19-aarch64-apple-darwin.tar.gz"
      sha256 "64f899e199c8575ae43f7c1cb8714584232f2ebf5075ddd38ea1e755f09e20b0"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.19/tokf-v0.2.19-x86_64-apple-darwin.tar.gz"
      sha256 "9f81590c91893918b4f7f75a3ad8b38c430f1703e3c68641ba5da313f0e8a9ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.19/tokf-v0.2.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "edb6a6a0fc175bd5fdc6c60421fe55050b8dd9577d5311add42c4882ab7c36fe"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
